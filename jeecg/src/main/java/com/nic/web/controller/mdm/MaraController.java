package com.nic.web.controller.mdm;

import com.nic.web.entity.mdm.MaraEntity;
import com.nic.web.service.mdm.IMaraService;
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
 * @类名称：MaraController
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 11:03
 */
@Controller
@RequestMapping("/maraController")
public class MaraController extends BaseController {
    private static final Logger logger = Logger.getLogger(MaraController.class);
    @Autowired
    private IMaraService maraService;

    /**
     * @desc：进去设备基础数据维护列表
     * @author：justin
     * @date：2018-12-28 11:11
     */
    @RequestMapping(params = "maraList")
    public ModelAndView maraList(HttpServletRequest request) {
        return new ModelAndView("com/nic/mdm/maraList");
    }

    /**
     * @desc：选择设备信息页面
     * @author：justin
     * @date：2018-12-29 10:18
     */
    @RequestMapping(params = "maraSelectList")
    public ModelAndView maraSelectList(HttpServletRequest request) {
        String hid = request.getParameter("id");
        request.setAttribute("hid", hid);
        return new ModelAndView("com/nic/mdm/maraSelectList");
    }

    /**
     * @desc：分页查询设备基础数据
     * @author：justin
     * @date：2018-12-28 11:11
     */
    @RequestMapping(params = "datagrid")
    public void datagrid(MaraEntity mara, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        CriteriaQuery cq = new CriteriaQuery(MaraEntity.class, dataGrid);
        //查询条件组装器
        HqlGenerateUtil.installHql(cq, mara, request.getParameterMap());
        cq.add();
        this.maraService.getDataGridReturn(cq, true);
        TagUtil.datagrid(response, dataGrid);
    }

    /**
     * @desc：进入新增修改页面
     * @author：justin
     * @date：2018-12-28 11:11
     */
    @RequestMapping(params = "addorupdate")
    public ModelAndView addorupdate(MaraEntity mara, HttpServletRequest req) {
        if (StringUtil.isNotEmpty(mara.getId())) {
            mara = maraService.getEntity(MaraEntity.class, mara.getId());
            req.setAttribute("mara", mara);
        }
        return new ModelAndView("com/nic/mdm/mara-add");
    }

    /**
     * @desc：保存设备信息
     * @author：justin
     * @date：2018-12-28 13:15
     */
    @RequestMapping(params = "save")
    @ResponseBody
    public AjaxJson save(MaraEntity mara, HttpServletRequest req) {
        AjaxJson j = new AjaxJson();
        try {
            if (StringUtil.isNotEmpty(mara.getId())) {
                MaraEntity m = maraService.getEntity(MaraEntity.class, mara.getId());
                m.setMaktx(mara.getMaktx());
                m.setMaraType(mara.getMaraType());
                m.setUnit(mara.getUnit());
                m.setModel(mara.getModel());
                m.setNorms(mara.getNorms());
                this.maraService.updateEntitie(m);
                j.setMsg("设备: " + mara.getMaktx() + "更新成功");
                j.setSuccess(true);
            } else {
                MaraEntity mt = maraService.findUniqueByProperty(MaraEntity.class, "matnr", mara.getMatnr());
                if (mt != null) {
                    j.setMsg("设备编码: " + mara.getMatnr() + "已经存在");
                    j.setSuccess(false);
                } else {
                    this.maraService.save(mara);
                    j.setMsg("设备: " + mara.getMaktx() + "添加成功");
                    j.setSuccess(true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("操作失败：" + e.getMessage());
            j.setSuccess(false);
        }
        logger.info("[" + IpUtil.getIpAddr(req) + "][添加编辑设备]" + j.getMsg());
        return j;
    }

    /**
     * @desc：删除设备信息
     * @author：justin
     * @date：2018-12-28 13:34
     */
    @RequestMapping(params = "delMara")
    @ResponseBody
    public AjaxJson delMara(MaraEntity mara, HttpServletRequest req) {
        AjaxJson j = new AjaxJson();
        try {
            String id = oConvertUtils.getString(req.getParameter("id"));
            maraService.deleteEntityById(MaraEntity.class, id);
            j.setMsg("删除成功");
            j.setSuccess(true);

        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("删除失败：" + e.getMessage());
            j.setSuccess(false);
        }
        logger.info("[" + IpUtil.getIpAddr(req) + "][删除设备信息]" + j.getMsg());
        return j;
    }
}
