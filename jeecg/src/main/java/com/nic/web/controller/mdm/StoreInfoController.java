package com.nic.web.controller.mdm;

import com.nic.web.entity.mdm.StoreInfoEntity;
import com.nic.web.service.mdm.IStoreInfoService;
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
 * @类名称：StoreInfoController
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 11:03
 */
@Controller
@RequestMapping("/storeInfoController")
public class StoreInfoController extends BaseController {
    private static final Logger logger = Logger.getLogger(StoreInfoController.class);

    @Autowired
    private IStoreInfoService storeInfoService;

    @RequestMapping(params = "storeInfoList")
    public ModelAndView storeInfoList(HttpServletRequest request) {
        return new ModelAndView("com/nic/mdm/storeInfoList");
    }

    /**
     * @desc：分页查询校区数据
     * @author：justin
     * @date：2018-12-26 15:02
     */
    @RequestMapping(params = "datagrid")
    public void datagrid(StoreInfoEntity storeInfo, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        CriteriaQuery cq = new CriteriaQuery(StoreInfoEntity.class, dataGrid);
        //查询条件组装器
        HqlGenerateUtil.installHql(cq, storeInfo, request.getParameterMap());
        cq.add();
        this.storeInfoService.getDataGridReturn(cq, true);
        TagUtil.datagrid(response, dataGrid);
    }

    /**
     * @desc：进去新增弹框
     * @author：justin
     * @date：2018-12-26 15:40
     */
    @RequestMapping(params = "addorupdate")
    public ModelAndView addorupdate(StoreInfoEntity storeInfo, HttpServletRequest req) {
        if (StringUtil.isNotEmpty(storeInfo.getId())) {
            storeInfo = storeInfoService.getEntity(StoreInfoEntity.class, storeInfo.getId());
            req.setAttribute("storeInfo", storeInfo);
        }
        return new ModelAndView("com/nic/mdm/storeInfo-add");
    }


    /**
     * @desc：保存仓库信息
     * @author：justin
     * @date：2018-12-28 13:15
     */
    @RequestMapping(params = "save")
    @ResponseBody
    public AjaxJson save(StoreInfoEntity storeInfo, HttpServletRequest req) {
        AjaxJson j = new AjaxJson();
        try {
            if (StringUtil.isNotEmpty(storeInfo.getId())) {
                StoreInfoEntity st = storeInfoService.getEntity(StoreInfoEntity.class, storeInfo.getId());
                st.setStoreName(storeInfo.getStoreName());
                st.setAddress(storeInfo.getAddress());
                st.setManager(storeInfo.getManager());
                st.setTelphone(storeInfo.getTelphone());
                this.storeInfoService.updateEntitie(st);
                j.setMsg("仓库: " + storeInfo.getStoreName() + "更新成功");
                j.setSuccess(true);
            } else {
                StoreInfoEntity st = storeInfoService.findUniqueByProperty(StoreInfoEntity.class, "storeCode", storeInfo.getStoreCode());
                if (st != null) {
                    j.setMsg("仓库: " + storeInfo.getStoreName() + "已经存在");
                    j.setSuccess(false);
                } else {
                    this.storeInfoService.save(storeInfo);
                    j.setMsg("仓库: " + storeInfo.getStoreName() + "添加成功");
                    j.setSuccess(true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("操作失败：" + e.getMessage());
            j.setSuccess(false);
        }
        logger.info("[" + IpUtil.getIpAddr(req) + "][添加编辑仓库]" + j.getMsg());
        return j;
    }

    /**
     * @desc：删除仓库信息
     * @author：justin
     * @date：2018-12-28 13:34
     */
    @RequestMapping(params = "delStoreInfo")
    @ResponseBody
    public AjaxJson delStoreInfo(StoreInfoEntity storeInfo, HttpServletRequest req) {
        String message = "删除成功";
        AjaxJson j = new AjaxJson();
        try {
            String id = oConvertUtils.getString(req.getParameter("id"));
            storeInfoService.deleteEntityById(StoreInfoEntity.class, id);
            logger.info("[" + IpUtil.getIpAddr(req) + "][删除仓库信息]" + message);
        } catch (Exception e) {
            e.printStackTrace();
            message = "删除失败";
        }
        j.setMsg(message);
        return j;
    }

}
