package com.nic.web.controller.store;

import com.nic.web.entity.store.StoreOrderEntity;
import com.nic.web.entity.store.StoreOrderLineEntity;
import com.nic.web.page.store.StoreOrderLinePage;
import com.nic.web.page.store.StoreOrderPage;
import com.nic.web.service.store.IStoreOrderLineService;
import com.nic.web.service.store.IStoreOrderService;
import com.nic.web.util.StaticParam;
import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.util.IpUtil;
import org.jeecgframework.core.util.ResourceUtil;
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
import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreOrderController
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 15:21
 */
@Controller
@RequestMapping("/storeOrderController")
public class StoreOrderController extends BaseController {
    private static final Logger logger = Logger.getLogger(StoreOrderController.class);
    @Autowired
    private IStoreOrderService storeOrderService;
    @Autowired
    private IStoreOrderLineService storeOrderLineService;


    /**
     * @desc：进去入库单查询列表
     * @author：justin
     * @date：2018-12-28 15:39
     */
    @RequestMapping(params = "orderInList")
    public ModelAndView orderInList(HttpServletRequest request) {
        return new ModelAndView("com/nic/store/storeOrderInList");
    }

    /**
     * @desc：进去入库单查询列表
     * @author：justin
     * @date：2018-12-28 15:39
     */
    @RequestMapping(params = "orderOutList")
    public ModelAndView orderOutList(HttpServletRequest request) {
        return new ModelAndView("com/nic/store/storeOrderOutList");
    }

    /**
     * @desc：分页查询出入库单据列表
     * @author：justin
     * @date：2018-12-28 17:30
     */
    @RequestMapping(params = "datagrid")
    public void datagrid(StoreOrderPage storeOrder, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        //手工转换minidao查询规则
        if (oConvertUtils.isNotEmpty(storeOrder.getOrderNo())) {
            storeOrder.setOrderNo(storeOrder.getOrderNo().replace("*", "%"));
        }
        if (oConvertUtils.isNotEmpty(storeOrder.getStoreCode())) {
            storeOrder.setStoreCode(storeOrder.getStoreCode().replace("*", "%"));
        }
        if (oConvertUtils.isNotEmpty(storeOrder.getStoreName())) {
            storeOrder.setStoreName(storeOrder.getStoreName().replace("*", "%"));
        }
        MiniDaoPage storeOrderInList = storeOrderService.queryStoreOrderList(storeOrder, dataGrid.getPage(), dataGrid.getRows());
        dataGrid.setResults(storeOrderInList.getResults());
        dataGrid.setTotal(storeOrderInList.getTotal());
        TagUtil.datagrid(response, dataGrid);
    }

    /**
     * @desc：跳转入库单新增页面
     * @author：justin
     * @date：2018-12-28 17:31
     */
    @RequestMapping(params = "storeOrderInPage")
    public ModelAndView storeOrderInPage(StoreOrderEntity storeOrder, HttpServletRequest req) {
        if (StringUtil.isNotEmpty(storeOrder.getId())) {
            storeOrder = storeOrderService.getEntity(StoreOrderEntity.class, storeOrder.getId());
            req.setAttribute("storeOrder", storeOrder);
        } else {
            //获取当前登录人
            req.setAttribute("username", ResourceUtil.getSessionUser().getRealName());
        }
        return new ModelAndView("com/nic/store/storeOrderIn-add");
    }

    /**
     * @desc：跳转到出库单新增页面
     * @author：justin
     * @date：2019-01-01 13:44
     */
    @RequestMapping(params = "storeOrderOutPage")
    public ModelAndView storeOrderOutPage(StoreOrderEntity storeOrder, HttpServletRequest req) {
        if (StringUtil.isNotEmpty(storeOrder.getId())) {
            storeOrder = storeOrderService.getEntity(StoreOrderEntity.class, storeOrder.getId());
            req.setAttribute("storeOrder", storeOrder);
        } else {
            //获取当前登录人
            req.setAttribute("username", ResourceUtil.getSessionUser().getRealName());
        }
        return new ModelAndView("com/nic/store/storeOrderOut-add");
    }

    /**
     * @desc：获取入库单单据行项目
     * @author：justin
     * @date：2018-12-28 17:49
     */
    @RequestMapping(params = "storeOrderInLineList")
    public ModelAndView storeOrderInLineList(StoreOrderEntity storeOrder, HttpServletRequest req) {
        String orderNo = storeOrder.getOrderNo();
        if (StringUtil.isNotEmpty(orderNo)) {
            //查询-单据行项目
            List<StoreOrderLinePage> orderLines = storeOrderLineService.queryLinesByOrderNo(orderNo);
            req.setAttribute("orderLines", orderLines);
        }
        return new ModelAndView("com/nic/store/storeOrderInLineList");
    }

    /**
     * @desc：获取出库单单据行项目
     * @author：justin
     * @date：2018-12-28 17:49
     */
    @RequestMapping(params = "storeOrderOutLineList")
    public ModelAndView storeOrderOutLineList(StoreOrderEntity storeOrder, HttpServletRequest req) {
        String orderNo = storeOrder.getOrderNo();
        if (StringUtil.isNotEmpty(orderNo)) {
            //查询-单据行项目
            List<StoreOrderLinePage> orderLines = storeOrderLineService.queryLinesByOrderNo(orderNo);
            req.setAttribute("orderLines", orderLines);
            req.setAttribute("orderNo", orderNo);
        }
        return new ModelAndView("com/nic/store/storeOrderOutLineList");
    }

    /**
     * @desc：保存单据
     * @author：justin
     * @date：2018-12-28 18:31
     */
    @RequestMapping(params = "save")
    @ResponseBody
    public AjaxJson save(StoreOrderEntity storeOrder, StoreOrderPage orderPage, HttpServletRequest req) {
        List<StoreOrderLineEntity> orderLines = orderPage.getOrderLines();
        String orderType = storeOrder.getOrderType();
        AjaxJson j = new AjaxJson();
        try {
            //判断单据类型不能为空
            if (StringUtil.isNotEmpty(orderType)) {
                if (CollectionUtils.isNotEmpty(orderLines)) {
                    //验证行项是否存在相同的物料
                    boolean flag = checkMatnr(orderLines);
                    if (flag) {
                        j.setMsg("保存失败：设备信息行项上存在相同的设备！请检查并修改后再提交！");
                        j.setSuccess(false);
                    } else {
                        storeOrderService.saveStoreOrder(storeOrder, orderLines);
                        j.setMsg("添加成功");
                        j.setSuccess(true);
                    }
                } else {
                    j.setMsg("请添加设备信息");
                    j.setSuccess(false);
                }
            } else {
                j.setMsg("单据类型获取失败！请联系开发人员！");
                j.setSuccess(false);
            }


            //出入库单据不能进行修改和删除，只能做冲销，故下面修改操作的代码可以注释掉
            //id不为空执行修改操作
           /* if (StringUtil.isNotEmpty(storeOrder.getId())) {
                StoreOrderEntity so = storeOrderService.getEntity(StoreOrderEntity.class, storeOrder.getId());
                so.setStoreCode(storeOrder.getStoreCode());
                so.setOperatorName(storeOrder.getOperatorName());
                so.setOperatorTime(storeOrder.getOperatorTime());
                storeOrderService.updateStoreOrder(so, orderLines);
            } else {
                //id为空，执行新增操作
                if (CollectionUtils.isNotEmpty(orderLines)) {
                    storeOrder.setOrderType(StaticParam.ORDER_IN);
                    storeOrderService.saveStoreOrder(storeOrder, orderLines);
                    j.setMsg("添加成功");
                    j.setSuccess(true);
                } else {
                    j.setMsg("请添加设备信息");
                    j.setSuccess(false);
                }
            }*/
        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("添加失败" + e.getMessage());
            j.setSuccess(false);
        }
        if (StringUtil.equals(orderType, StaticParam.ORDER_IN)) {
            logger.info("[" + IpUtil.getIpAddr(req) + "][添加入库单]" + j.getMsg());
        } else {
            logger.info("[" + IpUtil.getIpAddr(req) + "][添加出库单]" + j.getMsg());
        }

        return j;
    }

    /**
     * @desc：检查行项是否存在相同的物料
     * @author：justin
     * @date：2019-01-01 14:24
     */
    private boolean checkMatnr(List<StoreOrderLineEntity> orderLines) {
        boolean b = false;
        for (int i = 0; i < orderLines.size(); i++) {
            String matnr = orderLines.get(i).getMatnr();
            for (int j = i + 1; j < orderLines.size(); j++) {
                if (StringUtil.equals(matnr, orderLines.get(j).getMatnr())) {
                    b = true;
                    break;
                }
            }
        }
        return b;
    }

    /**
     * @desc：删除入库单
     * @author：justin
     * @date：2019-01-01 12:52
     */
    @RequestMapping(params = "delStoreOrder")
    @ResponseBody
    public AjaxJson delStoreOrder(StoreOrderEntity storeOrder, StoreOrderPage orderPage, HttpServletRequest req) {
        AjaxJson j = new AjaxJson();
        try {
            String orderNo = oConvertUtils.getString(req.getParameter("orderNo"));
            storeOrderService.delStoreOrderById(orderNo, StaticParam.ORDER_IN);
            j.setMsg("删除成功");
            j.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            j.setMsg("删除失败：" + e.getMessage());
            j.setSuccess(false);
        }
        logger.info("[" + IpUtil.getIpAddr(req) + "][删除入库单]" + j.getMsg());
        return j;
    }
}
