package com.nic.web.controller.store;

import com.nic.web.entity.store.StoreMoveEntity;
import com.nic.web.page.store.StoreMovePage;
import com.nic.web.service.store.IStoreMoveService;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.util.IpUtil;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.minidao.pojo.MiniDaoPage;
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
 * @类名称：StoreMoveController
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-03 11:33
 */
@Controller
@RequestMapping("/storeMoveController")
public class StoreMoveController extends BaseController {
    private static final Logger logger = Logger.getLogger(StoreMoveController.class);
    @Autowired
    private IStoreMoveService storeMoveService;

    /**
     * @desc：进入转仓单据查询页面
     * @author：justin
     * @date：2019-01-03 10:27
     */
    @RequestMapping(params = "storeMoveList")
    public ModelAndView storeMoveList(HttpServletRequest request) {
        return new ModelAndView("com/nic/store/storeMoveList");
    }

    /**
     * @desc：分页查询转仓订单
     * @author：justin
     * @date：2019-01-03 11:36
     */
    @RequestMapping(params = "datagrid")
    public void datagrid(StoreMovePage storeMove, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        //手工转换minidao查询规则
        if (oConvertUtils.isNotEmpty(storeMove.getOrderNo())) {
            storeMove.setOrderNo(storeMove.getOrderNo().replace("*", "%"));
        }
        if (oConvertUtils.isNotEmpty(storeMove.getMatnr())) {
            storeMove.setMatnr(storeMove.getMatnr().replace("*", "%"));
        }
        if (oConvertUtils.isNotEmpty(storeMove.getMaktx())) {
            storeMove.setMaktx(storeMove.getMaktx().replace("*", "%"));
        }
        MiniDaoPage storeOrderInList = storeMoveService.searchStoreMoveList(storeMove, dataGrid.getPage(), dataGrid.getRows());
        dataGrid.setResults(storeOrderInList.getResults());
        dataGrid.setTotal(storeOrderInList.getTotal());
        TagUtil.datagrid(response, dataGrid);
    }

    /**
     * @desc：进去新增或修改页面
     * @author：justin
     * @date：2019-01-03 11:37
     */
    @RequestMapping(params = "addorupdate")
    public ModelAndView addorupdate(StoreMoveEntity storeMove, HttpServletRequest req) {
        if (StringUtil.isNotEmpty(storeMove.getId())) {
            storeMove = storeMoveService.getEntity(StoreMoveEntity.class, storeMove.getId());
            req.setAttribute("storeMove", storeMove);
        }
        return new ModelAndView("com/nic/store/storeMove-add");
    }

    @RequestMapping(params = "save")
    @ResponseBody
    public AjaxJson save(StoreMoveEntity storeMove, HttpServletRequest req) {
        AjaxJson j = new AjaxJson();
        try {
            if (StringUtil.isNotEmpty(storeMove.getId())) {
                j.setMsg("单据号: " + storeMove.getOrderNo() + "更新成功");
                j.setSuccess(true);
            } else {
                StoreMoveEntity st = storeMoveService.findUniqueByProperty(StoreMoveEntity.class, "orderNo", storeMove.getOrderNo());
                if (st != null) {
                    j.setMsg("单据号: " + storeMove.getOrderNo() + "已经存在");
                    j.setSuccess(false);
                } else {
                    this.storeMoveService.saveStoreMove(storeMove);
                    j.setMsg("转仓单: " + storeMove.getOrderNo() + "添加成功");
                    j.setSuccess(true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("操作失败：" + e.getMessage());
            j.setSuccess(false);
        }
        logger.info("[" + IpUtil.getIpAddr(req) + "][添加编辑转仓单]" + j.getMsg());
        return j;
    }
}
