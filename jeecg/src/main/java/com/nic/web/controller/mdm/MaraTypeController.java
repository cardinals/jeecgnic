package com.nic.web.controller.mdm;

import com.nic.web.entity.mdm.MaraTypeEntity;
import com.nic.web.service.mdm.IMaraTypeService;
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：MaraTypeController
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 11:03
 */
@Controller
@RequestMapping("/maraTypeController")
public class MaraTypeController extends BaseController {
    private static final Logger logger = Logger.getLogger(MaraTypeController.class);
    @Autowired
    private IMaraTypeService maraTypeService;

    /**
     * @desc：进入设备类型查询列表
     * @author：justin
     * @date：2018-12-28 11:15
     */
    @RequestMapping(params = "maraTypeList")
    public ModelAndView maraTypeList(HttpServletRequest request) {
        return new ModelAndView("com/nic/mdm/maraTypeList");
    }

    /**
     * @desc：分页查询设备类型数据
     * @author：justin
     * @date：2018-12-28 11:15
     */
    @RequestMapping(params = "datagrid")
    public void datagrid(MaraTypeEntity maraType, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        CriteriaQuery cq = new CriteriaQuery(MaraTypeEntity.class, dataGrid);
        //查询条件组装器
        HqlGenerateUtil.installHql(cq, maraType, request.getParameterMap());
        cq.add();
        this.maraTypeService.getDataGridReturn(cq, true);
        TagUtil.datagrid(response, dataGrid);
    }

    /**
     * @desc：进入新增修改页面
     * @author：justin
     * @date：2018-12-28 11:14
     */
    @RequestMapping(params = "addorupdate")
    public ModelAndView addorupdate(MaraTypeEntity maraType, HttpServletRequest req) {
        if (StringUtil.isNotEmpty(maraType.getId())) {
            maraType = maraTypeService.getEntity(MaraTypeEntity.class, maraType.getId());
            req.setAttribute("maraType", maraType);
        }
        return new ModelAndView("com/nic/mdm/maraType-add");
    }

    /**
     * @desc：保存设备类型数据
     * @author：justin
     * @date：2018-12-28 11:44
     */
    @RequestMapping(params = "save")
    @ResponseBody
    public AjaxJson save(MaraTypeEntity maraType, HttpServletRequest req) {
        AjaxJson j = new AjaxJson();
        try {
            if (StringUtil.isNotEmpty(maraType.getId())) {
                MaraTypeEntity mt = maraTypeService.getEntity(MaraTypeEntity.class, maraType.getId());
                mt.setName(maraType.getName());
                this.maraTypeService.updateEntitie(mt);
                j.setMsg("设备类型: " + maraType.getName() + "更新成功");
                j.setSuccess(true);
            } else {
                MaraTypeEntity mt = maraTypeService.findUniqueByProperty(MaraTypeEntity.class, "code", maraType.getCode());
                if (mt != null) {
                    j.setMsg("设备类型编码: " + maraType.getCode() + "已经存在");
                    j.setSuccess(false);
                } else {
                    this.maraTypeService.save(maraType);
                    j.setMsg("设备类型: " + maraType.getName() + "添加成功");
                    j.setSuccess(true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("操作失败：" + e.getMessage());
            j.setSuccess(false);
        }
        logger.info("[" + IpUtil.getIpAddr(req) + "][添加编辑设备类型]" + j.getMsg());
        return j;
    }

    /**
     * @desc：删除设备类型数据
     * @author：justin
     * @date：2018-12-26 18:57
     */
    @RequestMapping(params = "delMaraType")
    @ResponseBody
    public AjaxJson delMaraType(MaraTypeEntity maraType, HttpServletRequest req) {
        AjaxJson j = new AjaxJson();
        try {
            String id = oConvertUtils.getString(req.getParameter("id"));
            maraTypeService.deleteEntityById(MaraTypeEntity.class, id);
            j.setMsg("删除成功");
            j.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("删除失败：" + e.getMessage());
            j.setSuccess(false);
        }
        logger.info("[" + IpUtil.getIpAddr(req) + "][删除设备类型]" + j.getMsg());
        return j;
    }
}
