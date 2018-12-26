package com.nic.web.controller.mdm;

import com.nic.web.entity.mdm.SchoolAreaEntity;
import com.nic.web.entity.mdm.SchoolAreaUserEntity;
import com.nic.web.service.mdm.ISchoolAreaService;
import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil;
import org.jeecgframework.core.util.IpUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.jeecgframework.web.system.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：SchoolAreaController
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-26 14:39
 */
@Controller
@RequestMapping("/schoolAreaController")
public class SchoolAreaController extends BaseController {
    private static final Logger logger = Logger.getLogger(SchoolAreaController.class);
    @Autowired
    private ISchoolAreaService schoolAreaService;
    @Autowired
    private SystemService systemService;

    /**
     * @desc：进去校区查询列表页面
     * @author：justin
     * @date：2018-12-26 14:56
     */
    @RequestMapping(params = "schoolAreaList")
    public ModelAndView schoolAreaList(HttpServletRequest request) {
        return new ModelAndView("com/nic/schoolAreaList");
    }

    /**
     * @desc：分页查询校区数据
     * @author：justin
     * @date：2018-12-26 15:02
     */
    @RequestMapping(params = "datagrid")
    public void datagrid(SchoolAreaEntity schoolArea, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        CriteriaQuery cq = new CriteriaQuery(SchoolAreaEntity.class, dataGrid);
        //查询条件组装器
        HqlGenerateUtil.installHql(cq, schoolArea, request.getParameterMap());
        cq.add();
        this.schoolAreaService.getDataGridReturn(cq, true);
        List<SchoolAreaEntity> userList = new ArrayList<SchoolAreaEntity>();
        for (Object o : dataGrid.getResults()) {
            if (o instanceof SchoolAreaEntity) {
                SchoolAreaEntity sae = (SchoolAreaEntity) o;
                if (sae.getId() != null && !"".equals(sae.getId())) {
                    List<SchoolAreaUserEntity> auList = systemService.findByProperty(SchoolAreaUserEntity.class, "areaId", sae.getId());
                    if (CollectionUtils.isNotEmpty(auList)) {
                        String userName = "";
                        for (SchoolAreaUserEntity sa : auList) {
                            TSUser user = systemService.findUniqueByProperty(TSUser.class, "id", sa.getUserId());
                            if (StringUtil.isEmpty(userName)) {
                                userName += user.getRealName();
                            } else {
                                userName += "," + user.getRealName();
                            }
                        }
                        sae.setManagers(userName);
                    }
                }
                userList.add(sae);
            }
        }

        TagUtil.datagrid(response, dataGrid);
    }

    /**
     * @desc：进去新增弹框
     * @author：justin
     * @date：2018-12-26 15:40
     */
    @RequestMapping(params = "addorupdate")
    public ModelAndView addorupdate(SchoolAreaEntity schoolArea, HttpServletRequest req) {
        if (StringUtil.isNotEmpty(schoolArea.getId())) {
            schoolArea = systemService.getEntity(SchoolAreaEntity.class, schoolArea.getId());
            req.setAttribute("schoolArea", schoolArea);
            getManagers(req, schoolArea);
        }
        return new ModelAndView("com/nic/schoolArea-add");
    }

    /**
     * @desc：获取校区管理员
     * @author：justin
     * @date：2018-12-26 18:44
     */
    private void getManagers(HttpServletRequest req, SchoolAreaEntity schoolArea) {
        List<SchoolAreaUserEntity> auList = systemService.findByProperty(SchoolAreaUserEntity.class, "areaId", schoolArea.getId());
        if (CollectionUtils.isNotEmpty(auList)) {
            String userIds = "";
            String userNames = "";
            for (SchoolAreaUserEntity sa : auList) {
                TSUser user = systemService.findUniqueByProperty(TSUser.class, "id", sa.getUserId());
                if (StringUtil.isEmpty(userIds)) {
                    userIds += user.getId();
                    userNames += user.getRealName();
                } else {
                    userIds += "," + user.getId();
                    userNames += "," + user.getRealName();
                }
            }
            req.setAttribute("userIds", userIds);
            req.setAttribute("userNames", userNames);
        }
    }

    @RequestMapping(params = "save")
    @ResponseBody
    public AjaxJson save(SchoolAreaEntity schoolArea, HttpServletRequest req) {
        String message = null;
        AjaxJson j = new AjaxJson();
        // 得到校区管理员用户
        String userIds = oConvertUtils.getString(req.getParameter("userId"));
        if (StringUtil.isNotEmpty(schoolArea.getId())) {
            SchoolAreaEntity sa = systemService.getEntity(SchoolAreaEntity.class, schoolArea.getId());
            sa.setAreaName(schoolArea.getAreaName());
            this.schoolAreaService.saveSchoolArea(sa, userIds.split(","));
            message = "校区: " + schoolArea.getAreaName() + "更新成功";
        } else {
            SchoolAreaEntity sa = systemService.findUniqueByProperty(SchoolAreaEntity.class, "areaCode", schoolArea.getAreaCode());
            if (sa != null) {
                message = "校区编码: " + schoolArea.getAreaCode() + "已经存在";
            } else {
                this.schoolAreaService.saveSchoolArea(schoolArea, userIds.split(","));
                message = "校区: " + schoolArea.getAreaName() + "添加成功";
            }
        }
        j.setMsg(message);
        logger.info("[" + IpUtil.getIpAddr(req) + "][添加编辑校区]" + message);
        return j;
    }

    /**
     * @desc：删除校区数据
     * @author：justin
     * @date：2018-12-26 18:57
     */
    @RequestMapping(params = "delSchoolArea")
    @ResponseBody
    public AjaxJson delSchoolArea(SchoolAreaEntity schoolArea, HttpServletRequest req) {
        String message = "删除成功";
        AjaxJson j = new AjaxJson();
        try {
            String id = oConvertUtils.getString(req.getParameter("id"));
            schoolAreaService.delSchoolArea(id);
            logger.info("[" + IpUtil.getIpAddr(req) + "][删除校区数据]" + message);
        } catch (Exception e) {
            e.printStackTrace();
            message = "删除失败";
        }
        j.setMsg(message);
        return j;
    }


}
