package org.jeecgframework.web.system.controller.core;

import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.util.DateUtils;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSLog;
import org.jeecgframework.web.system.service.LogService;
import org.jeecgframework.web.system.service.SystemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;


/**
 * 日志处理类
 *
 * @author 张代浩
 *
 */
@Controller
@RequestMapping("/logController")
public class LogController extends BaseController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	private SystemService systemService;

	private LogService logService;

	@Autowired
	public void setSystemService(SystemService systemService) {
		this.systemService = systemService;
	}

	@Autowired
	public void setLogService(LogService logService) {
		this.logService = logService;
	}

	/**
	 * 日志列表页面跳转
     *
     * @return
	 */
	@RequestMapping(params = "log")
	public ModelAndView log() {
		return new ModelAndView("system/log/logList");
	}

	/**
	 * easyuiAJAX请求数据
     *
     * @param request
	 * @param response
	 * @param dataGrid
	 */
	@RequestMapping(params = "datagrid")
	public void datagrid(HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(TSLog.class, dataGrid);

        //日志级别查询条件
		String operatetype = request.getParameter("operatetype");
		if (operatetype != null && !"0".equals(operatetype)) {
			cq.eq("operatetype", oConvertUtils.getShort(operatetype));
			cq.add();
		}
		//时间范围查询条件
        String operatetime_begin = request.getParameter("operatetime_begin");
        String operatetime_end = request.getParameter("operatetime_end");
        if(oConvertUtils.isNotEmpty(operatetime_begin)){
        	try {
				cq.ge("operatetime", DateUtils.parseDate(operatetime_begin, "yyyy-MM-dd hh:mm:ss"));
			} catch (ParseException e) {
				logger.error(e.toString());
			}
        	cq.add();
        }
        if(oConvertUtils.isNotEmpty(operatetime_end)){
        	try {
				cq.le("operatetime", DateUtils.parseDate(operatetime_end, "yyyy-MM-dd hh:mm:ss"));
			} catch (ParseException e) {
				logger.error(e.toString());
			}
        	cq.add();
        }
        this.systemService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

    /**
	 * 获取日志详情
	 * @param tsLog
	 * @param request
	 * @return
	 * @Author fangwenrong
	 * @Date 2015-05-10
	 */
	@RequestMapping(params = "logDetail")
	public ModelAndView logDetail(TSLog tsLog,HttpServletRequest request){
		if (StringUtil.isNotEmpty(tsLog.getId())) {
			tsLog = logService.getEntity(TSLog.class, tsLog.getId());
			request.setAttribute("tsLog", tsLog);
		}
		return new ModelAndView("system/log/logDetail");

    }

}
