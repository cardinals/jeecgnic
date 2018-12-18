package org.jeecgframework.web.cgform.controller.build;

import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.apache.commons.lang.StringUtils;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.enums.SysThemesEnum;
import org.jeecgframework.core.online.util.FreemarkerHelper;
import org.jeecgframework.core.util.*;
import org.jeecgframework.web.cgform.common.CommUtils;
import org.jeecgframework.web.cgform.engine.TempletContext;
import org.jeecgframework.web.cgform.entity.template.CgformTemplateEntity;
import org.jeecgframework.web.cgform.entity.upload.CgUploadEntity;
import org.jeecgframework.web.cgform.exception.BusinessException;
import org.jeecgframework.web.cgform.service.build.DataBaseService;
import org.jeecgframework.web.cgform.service.config.CgFormFieldServiceI;
import org.jeecgframework.web.cgform.service.template.CgformTemplateServiceI;
import org.jeecgframework.web.cgform.util.TemplateUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @ClassName: formBuildController
 * @Description: 读取模板生成填报表单（添加、修改）-执行表单数据添加和修改操作
 * @author 周俊峰
 */
//@Scope("prototype")
@Controller
@RequestMapping("/cgFormBuildController")
public class CgFormBuildController extends BaseController {
	private static final Logger logger = LoggerFactory.getLogger(CgFormBuildController.class);

	@Autowired
	private TempletContext templetContext;
	@Autowired
	private DataBaseService dataBaseService;
	@Autowired
	private CgformTemplateServiceI cgformTemplateService;
	@Autowired
	private CgFormFieldServiceI cgFormFieldService;



	/**
	 * 过滤online扩展参数中value属性
	 * @param list 表单列集合
	 */
	private void replaceExtendJson(List<Map<String,Object>> list){
		if(list!=null && !list.isEmpty()){
			for (Map<String, Object> column : list) {
				Object extendJson=column.get("extend_json");
				if(extendJson!=null && !extendJson.equals("")){
					String reg="value=\"[\\S]*\" ";
					column.put("extend_json", extendJson.toString().replaceAll(reg,""));
				}
			}
		}
	}

	/**
	 * 设置页面字典类型的默认值
	 * 类型： select、checkbox、radio
	 * @param list
	 * @param dataForm
	 */
	private void initAddDictTagDefaultVal(List<Map<String,Object>> list,Map<String, Object> dataForm){
		if(list!=null && !list.isEmpty()){
			for (Map<String, Object> column : list) {
				Object extendJson = column.get("extend_json");
				Object show_type = column.get("show_type");
				if(oConvertUtils.isNotEmpty(extendJson) && oConvertUtils.isNotEmpty(show_type) && "radio|checkbox|list".contains(show_type.toString())){
					 Pattern p = Pattern.compile("value=\"[\\S]*\" ");
				     Matcher m = p.matcher(extendJson.toString());
				     String dfVal = "";
				     while(m.find()) {
				    	 dfVal = m.group();
				     }
				     dfVal = dfVal.replace("value=","").replace("\"","").trim();
					 dataForm.put(column.get("field_name").toString(),dfVal);
					 logger.debug("--------------online添加页面字典类型默认值初始化----------field_name:{} ,dfVal:{} ,show_type :{}",
							 					new Object[] { column.get("field_name").toString(), dfVal, show_type.toString() });
				}
			}
		}
	}


	/**
	 * 获取url指定模板
	 * @param templateName
	 * @param templateType
	 * @param dataMap
	 * @return
	 */
	private String getUrlTemplate(String templateName,TemplateUtil.TemplateType templateType,Map dataMap){
		String content=null;
		CgformTemplateEntity entity=cgformTemplateService.findByCode(templateName);
		if(entity!=null){
			FreemarkerHelper viewEngine = new FreemarkerHelper();
			dataMap.put("DictData", ApplicationContextUtil.getContext().getBean("dictDataTag"));
			content = viewEngine.parseTemplate(TemplateUtil.getTempletPath(entity,0, templateType), dataMap);
		}
		return content;
	}

	/**
	 * 获取表配置中存储的风格模板
	 * @param templateName
	 * @param request
	 * @param data
	 * @return
	 */
	private String getTableTemplate(String templateName,HttpServletRequest request,Map data){
		StringWriter stringWriter = new StringWriter();
		BufferedWriter writer = new BufferedWriter(stringWriter);
		//如果URL请求有ftlVersion参数，表示用户指定word模板渲染表单
		String wordFtlVersion =request.getParameter("ftlVersion");
		Template template = templetContext.getTemplate(templateName, wordFtlVersion);
		try {

            template.setDateTimeFormat("yyyy-MM-dd HH:mm:ss");
            template.setDateFormat("yyyy-MM-dd");
            template.setTimeFormat("HH:mm:ss");

			template.process(data, writer);
		} catch (TemplateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return stringWriter.toString();
	}

	private String getHtmlHead(HttpServletRequest request){
		HttpSession session = ContextHolderUtils.getSession();
		String lang = (String)session.getAttribute("lang");
		if(lang==null||lang.length()<=0){
			lang = "zh-cn";
		}
		StringBuilder sb= new StringBuilder("");
		SysThemesEnum sysThemesEnum = SysThemesUtil.getSysTheme(request);
		String basePath = request.getScheme()+"://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/jquery/jquery-1.8.3.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/jquery-plugs/i18n/jquery.i18n.properties.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/tools/dataformat.js\"></script>");
		sb.append("<link rel=\"stylesheet\" type=\"text/css\" href=\""+basePath+"/plug-in/accordion/css/accordion.css\">");
		sb.append(SysThemesUtil.getEasyUiTheme(sysThemesEnum,basePath));

		sb.append(SysThemesUtil.getEasyUiIconTheme(sysThemesEnum));
		//sb.append("<link rel=\"stylesheet\" type=\"text/css\" href=\""+basePath+"/plug-in/accordion/css/icons.css\">");

		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/easyui/jquery.easyui.min.1.3.2.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/easyui/locale/zh-cn.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/tools/syUtil.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/My97DatePicker/WdatePicker.js\"></script>");
//		sb.append("<link rel=\"stylesheet\" href=\"plug-in/tools/css/common.css\" type=\"text/css\"></link>");
		//common.css
		sb.append(SysThemesUtil.getCommonTheme(sysThemesEnum,basePath));
//		sb.append("<script type=\"text/javascript\" src=\"plug-in/lhgDialog/lhgdialog.min.js\"></script>");
		sb.append(SysThemesUtil.getLhgdialogTheme(sysThemesEnum,basePath));

		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/layer/layer.js\"></script>");

		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/tools/curdtools.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/tools/easyuiextend.js\"></script>");
		sb.append(SysThemesUtil.getEasyUiMainTheme(sysThemesEnum,basePath));
		sb.append("<link rel=\"stylesheet\" href=\""+basePath+"/plug-in/uploadify/css/uploadify.css\" type=\"text/css\"></link>");

		//sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/uploadify/jquery.uploadify-3.1.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/plupload/plupload.full.min.js\"></script>");

		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/tools/Map.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/Validform/js/Validform_v5.3.1_min_zh-cn.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/Validform/js/Validform_Datatype_zh-cn.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/Validform/js/datatype_zh-cn.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/Validform/plugin/passwordStrength/passwordStrength-min.js\"></script>");
		//style.css
		sb.append(SysThemesUtil.getValidformStyleTheme(sysThemesEnum,basePath));
		//tablefrom.css
		sb.append(SysThemesUtil.getValidformTablefrom(sysThemesEnum,basePath));

		//uedit
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/ueditor/ueditor.config.js\"></script>");
		sb.append("<script type=\"text/javascript\" src=\""+basePath+"/plug-in/ueditor/ueditor.all.js\"></script>");


		return sb.toString();
	}



	/**
	 * 如果表单带有附件，则查询出来传递到页面
	 * @param data 传往页面的数据容器
	 * @param id 表单主键，用户查找附件数据
	 */
	private void pushFiles(Map<String, Object> data, String id) {
		List<CgUploadEntity> uploadBeans = cgFormFieldService.findByProperty(CgUploadEntity.class, "cgformId", id);
		List<Map<String,Object>> files = new ArrayList<Map<String,Object>>(0);
		for(CgUploadEntity b:uploadBeans){
			String title = b.getAttachmenttitle();//附件名
			String fileKey = b.getId();//附件主键
			String path = b.getRealpath();//附件路径
			String field = b.getCgformField();//表单中作为附件控件的字段
			Map<String, Object> file = new HashMap<String, Object>();
			file.put("title", title);
			file.put("fileKey", fileKey);
			file.put("path", path);
			file.put("field", field==null?"":field);
			files.add(file);
		}
		data.put("filesList", files);
	}

	/**
	 * 如果表单带有 附件(图片),则查询出来传递到页面
	 * @param data 传往页面的数据容器
	 * @param id 表单主键,用户查找附件数据
	 */
	private void pushImages(Map<String, Object> data, String id) {
		List<CgUploadEntity> uploadBeans = cgFormFieldService.findByProperty(CgUploadEntity.class, "cgformId", id);
		List<Map<String,Object>> images = new ArrayList<Map<String,Object>>(0);
		for(CgUploadEntity b:uploadBeans){
			String title = b.getAttachmenttitle();//附件名
			String fileKey = b.getId();//附件主键
			String path = b.getRealpath();//附件路径
			String field = b.getCgformField();//表单中作为附件控件的字段
			Map<String, Object> image = new HashMap<String, Object>();
			image.put("title", title);
			image.put("fileKey", fileKey);
			image.put("path", path);
			image.put("field", field==null?"":field);
			images.add(image);
		}
		data.put("imageList", images);
	}

	/**
	 * 保存或更新
     *
     * @param request
	 * @return
     * @throws Exception
     */
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "saveOrUpdate")
	@ResponseBody
	public AjaxJson saveOrUpdate(HttpServletRequest request) throws Exception{
		String message = null;
		AjaxJson j = new AjaxJson();
		Map data = request.getParameterMap();
		if(data!=null){
			data = CommUtils.mapConvert(data);
			String tableName = (String)data.get("tableName");
			String id = (String)data.get("id");
			//打印测试
		    Iterator it=data.entrySet().iterator();
		    while(it.hasNext()){
		    	Map.Entry entry=(Map.Entry)it.next();
		        Object ok=entry.getKey();
		        Object ov=entry.getValue()==null?"":entry.getValue();
		        logger.debug("name:"+ok.toString()+";value:"+ov.toString());
		    }
		    if(StringUtils.isEmpty(id)){
			    //消除不是表的字段
			    String [] filterName = {"tableName","saveOrUpdate"};
			    data = CommUtils.attributeMapFilter(data,filterName);
			    //保存数据库
			    try {
			    	Object pkValue = null;
			    	pkValue = dataBaseService.getPkValue(tableName);
			    	data.put("id", pkValue);
			    	//--author：luobaoli---------date:20150615--------for: 处理service层抛出的异常
			    	try {
						dataBaseService.insertTable(tableName, data);
						j.setSuccess(true);
						message = "保存成功";
			    	}catch (Exception e) {
			    		j.setSuccess(false);
						message = "保存失败";
						e.printStackTrace();
			    	}
			    	//--author：luobaoli---------date:20150615--------for: 处理service层抛出的异常
				} catch (Exception e) {
					e.printStackTrace();
					j.setSuccess(false);
					message = e.getMessage();
				}
			}else{
				//消除不是表的字段
			    String [] filterName = {"tableName","saveOrUpdate","id"};
			    data = CommUtils.attributeMapFilter(data,filterName);
			    //更新数据库
			    try {
					int num = dataBaseService.updateTable(tableName, id, data);
					if (num>0) {
						j.setSuccess(true);
						message = "保存成功";
					}else {
						j.setSuccess(false);
						message = "保存失败";
					}
				} catch (Exception e) {
					e.printStackTrace();
					j.setSuccess(false);
					message = e.getMessage();
				}
				logger.info("["+IpUtil.getIpAddr(request)+"][online表单单表数据保存和更新]"+message+"表名："+tableName);
			}
		}
		j.setMsg(message);
		j.setObj(data);
		return j;
	}


    /**
	 * 保存或更新
     *
     * @param request
	 * @return
     * @throws Exception
     */
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "saveOrUpdateMore")
	@ResponseBody
	public AjaxJson saveOrUpdateMore(HttpServletRequest request) throws Exception{
		String message = null;
		AjaxJson j = new AjaxJson();
		Map data = request.getParameterMap();
		if(data!=null){
			data = CommUtils.mapConvert(data);
			String tableName = (String)data.get("tableName");
			String id = (String)data.get("id");
			//打印测试
		    Iterator it=data.entrySet().iterator();
		    while(it.hasNext()){
		    	Map.Entry entry=(Map.Entry)it.next();
		        Object ok=entry.getKey();
		        Object ov=entry.getValue()==null?"":entry.getValue();
		        logger.debug("name:"+ok.toString()+";value:"+ov.toString());
		    }
		    Map<String,List<Map<String,Object>>> mapMore =CommUtils.mapConvertMore(data, tableName);
		    if(StringUtils.isEmpty(id)){
		    	logger.info("一对多添加!!!!!");
		    	try {
		    		Map<String, Object> result = dataBaseService.insertTableMore(mapMore, tableName);
		    		data.put("id", result.get("id"));
		    		j.setSuccess(true);
					message = "添加成功";
				} catch (BusinessException e) {
					e.printStackTrace();
					j.setSuccess(false);
					message = e.getMessage();
				}

            }else{
				logger.info("一对多修改!!!!!");
				try {
					dataBaseService.updateTableMore(mapMore, tableName);
					j.setSuccess(true);
					message = "更新成功";
				} catch (BusinessException e) {
					e.printStackTrace();
					j.setSuccess(false);
					message = e.getMessage();
				}
			}
		    logger.info("["+IpUtil.getIpAddr(request)+"][online表单一对多数据保存和更新]"+message+"表名："+tableName);
		}
		j.setMsg(message);
		j.setObj(data);
		return j;
	}


    /**
	 * 自定义按钮（触发对应的后台方法）
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(params = "doButton")
	@ResponseBody
	public AjaxJson doButton(HttpServletRequest request){
		String message = null;
		AjaxJson j = new AjaxJson();
		try {
			String formId = request.getParameter("formId");
			String buttonCode = request.getParameter("buttonCode");
			String tableName = request.getParameter("tableName");
			String id = request.getParameter("id");
			Map<String,Object> data  = dataBaseService.findOneForJdbc(tableName, id);
			if(data!=null){
				//打印测试
			    Iterator it=data.entrySet().iterator();
			    while(it.hasNext()){
			    	Map.Entry entry=(Map.Entry)it.next();
			        Object ok=entry.getKey();
			        Object ov=entry.getValue()==null?"":entry.getValue();
			        logger.debug("name:"+ok.toString()+";value:"+ov.toString());
			    }
				data = CommUtils.mapConvert(data);

				dataBaseService.executeJavaExtend(formId, buttonCode, data, "start");

				dataBaseService.executeSqlExtend(formId, buttonCode, data);

				dataBaseService.executeJavaExtend(formId, buttonCode, data, "end");

			}
			j.setSuccess(true);
			message = "操作成功";
			logger.info("["+IpUtil.getIpAddr(request)+"][online表单自定义按钮action触发]"+message+"表名："+tableName);
		} catch (Exception e) {
			e.printStackTrace();
			message = "操作失败";
		}
		j.setMsg(message);
		return j;
	}

}
