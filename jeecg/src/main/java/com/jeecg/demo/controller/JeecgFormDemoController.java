package com.jeecg.demo.controller;

import com.jeecg.demo.entity.TSDocument;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.common.UploadFile;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.ComboTree;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.enums.StoreUploadFilePathEnum;
import org.jeecgframework.core.util.*;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.tag.vo.easyui.ComboTreeModel;
import org.jeecgframework.web.system.pojo.base.TSAttachment;
import org.jeecgframework.web.system.pojo.base.TSDepart;
import org.jeecgframework.web.system.pojo.base.TSType;
import org.jeecgframework.web.system.pojo.base.TSTypegroup;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author jeecg
 * @ClassName: JeecgFormDemoController
 * @Description: TODO(演示例子处理类)
 */
@Controller
@RequestMapping("/jeecgFormDemoController")
public class JeecgFormDemoController extends BaseController {
    private static final Logger logger = Logger.getLogger(JeecgFormDemoController.class);

    @Autowired
    private SystemService systemService;


    /**
     * 二维码生成功能
     *
     * @param request
     * @return
     */
    @RequestMapping(params = "qrcode")
    public ModelAndView qrcode(HttpServletRequest request) {
        return new ModelAndView("com/jeecg/demo/form_QRCode");
    }


    /**
     * 父级DEMO下拉菜单
     */
    @RequestMapping(params = "getComboTreeData")
    @ResponseBody
    public List<ComboTree> getComboTreeData(HttpServletRequest request, ComboTree comboTree) {
        CriteriaQuery cq = new CriteriaQuery(TSDepart.class);
        if (comboTree.getId() != null) {
            cq.eq("TSPDepart.id", comboTree.getId());
        }
        if (comboTree.getId() == null) {
            cq.isNull("TSPDepart");
        }
        cq.add();
        List<TSDepart> demoList = systemService.getListByCriteriaQuery(cq, false);
        List<ComboTree> comboTrees = new ArrayList<ComboTree>();
        ComboTreeModel comboTreeModel = new ComboTreeModel("id", "departname", "TSDeparts");
        comboTrees = systemService.ComboTree(demoList, comboTreeModel, null, false);
        return comboTrees;
    }


    /**
     * 自动完成请求返回数据
     *
     * @param request
     */
    @RequestMapping(params = "getAutocompleteData", method = {RequestMethod.GET, RequestMethod.POST})
    public void getAutocompleteData(HttpServletRequest request, HttpServletResponse response) {
        String searchVal = request.getParameter("q");
        String hql = "from TSUser where userName like '%" + searchVal + "%'";
        List autoList = systemService.findHql(hql);
        try {
            response.setContentType("application/json;charset=UTF-8");
            response.setHeader("Pragma", "No-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            response.getWriter().write(JSONHelper.listtojson(new String[]{"userName"}, 1, autoList));
            response.getWriter().flush();
        } catch (Exception e1) {
            e1.printStackTrace();
        } finally {
            try {
                response.getWriter().close();
            } catch (IOException e) {
            }
        }

    }

    /**
     * 【demo】电子签章
     *
     * @param request
     * @return
     */
    @RequestMapping(params = "eSign")
    public ModelAndView eSignDemo(HttpServletRequest request) {
        return new ModelAndView("com/jeecg/demo/zsign");
    }


    /**
     * 通用上传demo
     *
     * @return
     */
    @RequestMapping(params = "commonUpload")
    public ModelAndView commonUploadDemo() {
        return new ModelAndView("system/commonupload/commonUploadFile");
    }

    /**
     * @return
     */
    @RequestMapping(params = "saveUploadFile")
    @ResponseBody
    public AjaxJson saveUploadFile(String documentTitle, String filename, String swfpath) {
        AjaxJson ajaxJson = new AjaxJson();
        try {
            if (StringUtil.isEmpty(filename)) {
                ajaxJson.setSuccess(false);
                ajaxJson.setMsg("未上传文件");
                return ajaxJson;
            }
            TSTypegroup tsTypegroup = systemService.getTypeGroup("fieltype", "文档分类");
            TSType tsType = systemService.getType("files", "附件", tsTypegroup);
            TSDocument document = new TSDocument();
            document.setDocumentTitle(documentTitle);
            document.setRealpath(filename);
            document.setSubclassname(MyClassLoader.getPackPath(document));
            document.setCreatedate(DateUtils.gettimestamp());
            document.setTSType(tsType);
            document.setSwfpath(swfpath);
            String fileName = filename.substring(filename.lastIndexOf("/") + 1, filename.lastIndexOf("."));
            document.setAttachmenttitle(fileName);
            document.setExtend(filename.substring(filename.lastIndexOf(".") + 1));
            systemService.save(document);
        } catch (Exception e) {
            e.printStackTrace();
            ajaxJson.setSuccess(false);
            ajaxJson.setMsg("失败：" + e.getMessage());
        }
        return ajaxJson;
    }


    /**
     * 文件添加跳转
     *
     * @param req
     * @return
     */
    @RequestMapping(params = "addFiles")
    public ModelAndView addFiles(HttpServletRequest req) {
        return new ModelAndView("system/document/files");
    }

    /**
     * 文件编辑跳转
     *
     * @return
     */
    @RequestMapping(params = "editFiles")
    public ModelAndView editFiles(TSDocument doc, ModelMap map, HttpServletRequest request) {
        if (StringUtil.isNotEmpty(doc.getId())) {
            doc = systemService.getEntity(TSDocument.class, doc.getId());
            map.put("doc", doc);
            TSAttachment attachment = systemService.get(TSAttachment.class, doc.getId());
            map.put("attachment", attachment);
        }
        return new ModelAndView("system/document/files");
    }

    /**
     * 保存文件
     *
     * @param document
     * @return
     * @throws Exception
     */
    @RequestMapping(params = "saveFiles", method = RequestMethod.POST)
    @ResponseBody
    public AjaxJson saveFiles(HttpServletRequest request, HttpServletResponse response, TSDocument document) {
        AjaxJson j = new AjaxJson();
        Map<String, Object> attributes = new HashMap<String, Object>();
        TSTypegroup tsTypegroup = systemService.getTypeGroup("fieltype", "文档分类");
        TSType tsType = systemService.getType("files", "附件", tsTypegroup);
        String documentId = oConvertUtils.getString(request.getParameter("documentId"));// 文件ID
        String documentTitle = oConvertUtils.getString(request.getParameter("documentTitle"));// 文件标题
        if (StringUtil.isNotEmpty(documentId)) {
            document.setId(documentId);
            document = systemService.getEntity(TSDocument.class, documentId);
            document.setDocumentTitle(documentTitle);
        }
        document.setSubclassname(MyClassLoader.getPackPath(document));
        document.setCreatedate(DateUtils.gettimestamp());
        document.setTSType(tsType);
        UploadFile uploadFile = new UploadFile(request, document);
        uploadFile.setCusPath("files");
        //设置weboffice转化【不设置该字段，则不做在线预览转化】
        uploadFile.setSwfpath("swfpath");
        document = systemService.uploadFile(uploadFile);
        attributes.put("url", document.getRealpath());
        attributes.put("fileKey", document.getId());
        attributes.put("name", document.getAttachmenttitle());
        attributes.put("viewhref", "commonController.do?objfileList&fileKey=" + document.getId());
        attributes.put("delurl", "commonController.do?delObjFile&fileKey=" + document.getId());
        j.setMsg("文件添加成功");
        j.setAttributes(attributes);
        return j;
    }

    /**
     * 新闻法规文件列表
     */
    @RequestMapping(params = "documentList")
    public void documentList(TSDocument document, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        CriteriaQuery cq = new CriteriaQuery(TSDocument.class, dataGrid);
        //查询条件组装器

        org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, document, request.getParameterMap());

        String typecode = oConvertUtils.getString(request.getParameter("typecode"));
        cq.createAlias("TSType", "TSType");
        cq.eq("TSType.typecode", typecode);
        cq.add();
        this.systemService.getDataGridReturn(cq, true);
        TagUtil.datagrid(response, dataGrid);
    }

    /**
     * 删除文档
     *
     * @param document
     * @return
     */
    @RequestMapping(params = "delDocument")
    @ResponseBody
    public AjaxJson delDocument(TSDocument document, HttpServletRequest request) {
        String message = null;
        AjaxJson j = new AjaxJson();
        document = systemService.getEntity(TSDocument.class, document.getId());
        message = "" + document.getDocumentTitle() + "被删除成功";
        systemService.delete(document);
        systemService.addLog(message, Globals.Log_Type_DEL,
                Globals.Log_Leavel_INFO);
        j.setSuccess(true);
        j.setMsg(message);
        return j;
    }

    /**
     * 修改文件标题
     *
     * @author taoYan
     * @since 2018年8月2日
     */
    @RequestMapping(params = "updateDoc")
    @ResponseBody
    public AjaxJson updateDoc(HttpServletRequest request) {
        AjaxJson j = new AjaxJson();
        try {
            String id = request.getParameter("id");
            String title = request.getParameter("title");
            TSDocument document = systemService.getEntity(TSDocument.class, id);
            document.setDocumentTitle(title);
            systemService.updateEntitie(document);
            j.setSuccess(true);
            j.setMsg("文件标题修改成功!");
        } catch (Exception e) {
            j.setSuccess(false);
            j.setMsg("文件标题修改失败!");
        }

        return j;
    }


    /**
     * 删除部门
     *
     * @param depart
     * @param request
     * @return
     */
    @RequestMapping(params = "del")
    @ResponseBody
    public AjaxJson del(TSDepart depart, HttpServletRequest request) {
        AjaxJson j = new AjaxJson();
        depart = systemService.getEntity(TSDepart.class, depart.getId());
        Long childCount = systemService.getCountForJdbcParam("select count(1) from t_s_depart where parentdepartid = ?", depart.getId());
        if (childCount > 0) {
            j.setSuccess(false);
            j.setMsg("有下级,不能删除");
            return j;
        }
        systemService.executeSql("delete from t_s_role_org where org_id=?", depart.getId());
        j.setMsg("删除成功");
        return j;
    }


    /**
     * Webupload上传
     *
     * @param request
     * @return
     */
    @RequestMapping(params = "webuploader")
    public ModelAndView webuploader(HttpServletRequest request) {
        logger.info("----webuploaderdemo-----");
        return new ModelAndView("com/jeecg/demo/form_webuploader");
    }

    /**
     * WebUploader
     * 文件上传处理
     */
    @RequestMapping("/filedeal")
    @ResponseBody
    public AjaxJson filedeal(HttpServletRequest request, HttpServletResponse response) {
        AjaxJson j = new AjaxJson();
        String msg = "";
        String ctxPath = ResourceUtil.getConfigByName("webUploadpath");//demo中设置为D://upFiles,实际项目应因事制宜
        try {
            String fileName = null;
            String bizType = request.getParameter("bizType");//上传业务名称
            String bizPath = StoreUploadFilePathEnum.getPath(bizType);//根据业务名称判断上传路径
            String nowday = new SimpleDateFormat("yyyyMMdd").format(new Date());
            File file = new File(ctxPath + "/" + bizPath + "/" + nowday);
            if (!file.exists()) {
                file.mkdirs();// 创建文件根目录
            }
            MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
            MultipartFile mf = multipartRequest.getFile("file");// 获取上传文件对象
            String orgName = mf.getOriginalFilename();// 获取文件名
            fileName = String.valueOf(UUID.randomUUID().getMostSignificantBits()).replace("-", "") + orgName.substring(orgName.lastIndexOf("."));
            String savePath = file.getPath() + "/" + fileName;
            File savefile = new File(savePath);
            FileCopyUtils.copy(mf.getBytes(), savefile);
            msg = "上传成功";
            j.setMsg(msg);
            String dbpath = bizPath + "/" + nowday + "/" + fileName;
            Map<String, Object> info = new HashMap<String, Object>();
            info.put("filename", orgName.substring(0, orgName.lastIndexOf(".")));
            info.put("filesize", mf.getSize());
            info.put("filetype", orgName.substring(orgName.lastIndexOf(".")));
            info.put("filepath", dbpath);
            j.setAttributes(info);
        } catch (IOException e) {
            j.setSuccess(false);
            logger.info(e.getMessage());
        }
        j.setMsg(msg);
        return j;
    }

    /**
     * 删除处理
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/filedelete")
    @ResponseBody
    public AjaxJson filedelete(HttpServletRequest request, HttpServletResponse response) {
        AjaxJson j = new AjaxJson();
        String msg = "";
        String ctxPath = ResourceUtil.getConfigByName("webUploadpath");//demo中设置为D://upFiles,实际项目应因事制宜
        String path = request.getParameter("filepath");
        String delpath = ctxPath + "/" + path;
        File fileDelete = new File(delpath);
        if (!fileDelete.exists() || !fileDelete.isFile()) {
            msg = "警告: " + delpath + "不存在!";
            logger.info(msg);
            j.setSuccess(true);//不存在前台也给他删除
        } else {
            if (fileDelete.delete()) {
                msg = "--------成功删除文件---------" + delpath;
                logger.info(msg);
            } else {
                j.setSuccess(false);
                msg = "没删除成功--jdk的问题还是你文件的问题请重新试试";
                logger.info(msg);
            }
        }
        j.setMsg(msg);
        return j;
    }

    @RequestMapping("/filedown")
    public void getImgByurl(HttpServletResponse response, HttpServletRequest request) throws Exception {
        String dbpath = request.getParameter("filepath");
        if (oConvertUtils.isNotEmpty(dbpath) && dbpath.endsWith(",")) {
            dbpath = dbpath.substring(0, dbpath.length() - 1);
        }
        response.setContentType("application/x-msdownload;charset=utf-8");
        String fileType = dbpath.substring(dbpath.lastIndexOf("."));
        String fileName = request.getParameter("filename") + fileType;
        String userAgent = request.getHeader("user-agent").toLowerCase();
        if (userAgent.contains("msie") || userAgent.contains("like gecko")) {
            fileName = URLEncoder.encode(fileName, "UTF-8");
        } else {
            fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
        }
        response.setHeader("Content-disposition", "attachment; filename=" + fileName);

        InputStream inputStream = null;
        OutputStream outputStream = null;
        try {
            String localPath = ResourceUtil.getConfigByName("webUploadpath");
            String imgurl = localPath + "/" + dbpath;
            inputStream = new BufferedInputStream(new FileInputStream(imgurl));
            outputStream = response.getOutputStream();
            byte[] buf = new byte[1024];
            int len;
            while ((len = inputStream.read(buf)) > 0) {
                outputStream.write(buf, 0, len);
            }
            response.flushBuffer();
        } catch (Exception e) {
            logger.info("--通过流的方式获取文件异常--" + e.getMessage());
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }


    /**
     * 文件分割 请求处理
     * 尚存bug List<FileItem> items = upload.parseRequest(request); 因为mvc已有已文件处理配置，此处获取不到值了
     * 后期可修改
     *
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/doupload")
    public void doupload(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String ctxPath = ResourceUtil.getConfigByName("webUploadpath");//demo中设置为D://upFiles,实际项目应因事制宜
        String tempFileDir = ctxPath + File.separator + "temp";
        response.setCharacterEncoding("UTF-8");
        Integer schunk = null;//分割块数
        Integer schunks = null;//总分割数
        String name = null;//文件名
        BufferedOutputStream outputStream = null;
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                String bizType = request.getParameter("bizType");//上传业务名称
                String bizPath = StoreUploadFilePathEnum.getPath(bizType);//根据业务名称判断上传路径
                String nowday = new SimpleDateFormat("yyyyMMdd").format(new Date());
                String fileDir = ctxPath + File.separator + bizPath + File.separator + nowday;
                File file = new File(fileDir);
                if (!file.exists()) {
                    file.mkdirs();// 创建文件根目录
                }
                File tempFile = new File(tempFileDir);
                if (!tempFile.exists()) {
                    tempFile.mkdirs();// 创建文件临时目录
                }
                DiskFileItemFactory factory = new DiskFileItemFactory();
                factory.setSizeThreshold(1024);
                factory.setRepository(tempFile);//设置临时目录
                ServletFileUpload upload = new ServletFileUpload(factory);
                upload.setHeaderEncoding("UTF-8");
                upload.setSizeMax(5 * 1024 * 1024);//设置附近大小？？
                List<FileItem> items = upload.parseRequest(request);
                //生成新的文件名
                String newFilename = null;
                for (FileItem item : items) {
                    if (!item.isFormField()) {
                        //如果是文件类型
                        name = item.getName();//获取文件名
                        System.out.println("name:" + name);
                        newFilename = UUID.randomUUID().toString().replace("-", "").concat(".").concat(FilenameUtils.getExtension(name));
                        System.out.println("newFilename:" + newFilename);
                        if (name != null) {
                            String nFname = newFilename;
                            if (schunk != null) {
                                nFname = schunk + "_" + name;
                            }
                            File savedFile = new File(fileDir, nFname);
                            item.write(savedFile);
                        }
                    } else {
                        //判断是否带分割信息
                        if (item.getFieldName().equals("chunk")) {
                            schunk = Integer.parseInt(item.getString());
                        }
                        if (item.getFieldName().equals("chunks")) {
                            schunks = Integer.parseInt(item.getString());
                        }
                    }
                }
                System.out.println("chunk:" + schunk + "-" + schunks);
                if (schunk != null && schunk + 1 == schunks) {
                    outputStream = new BufferedOutputStream(new FileOutputStream(new File(fileDir, newFilename)));
                    for (int i = 0; i < schunks; i++) {
                        File itempFile = new File(fileDir, i + "_" + name);
                        byte[] bytes = FileUtils.readFileToByteArray(itempFile);
                        outputStream.write(bytes);
                        outputStream.flush();
                        itempFile.delete();
                    }
                    outputStream.flush();
                }
                response.getWriter().write("{\"status\":true,\"newName\":\"" + newFilename + "\"}");
            } catch (FileUploadException e) {
                e.printStackTrace();
                response.getWriter().write("{\"status\":false}");
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("{\"status\":false}");
            } finally {
                try {
                    if (outputStream != null)
                        outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * 打印demo页面跳转
     *
     * @return
     */
    @RequestMapping(params = "printingDemo")
    public ModelAndView printingDemo(ModelMap model) {
        return new ModelAndView("com/jeecg/demo/printingDemo");
    }


}