package com.nic.web.controller.store;

import com.nic.web.page.store.StoreDetailPage;
import com.nic.web.service.store.IStoreDetailService;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.util.oConvertUtils;
import org.jeecgframework.minidao.pojo.MiniDaoPage;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreDetailController
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 13:05
 */
@Controller
@RequestMapping("/storeDetailController")
public class StoreDetailController extends BaseController {
    @Autowired
    private IStoreDetailService storeDetailService;

    /**
     * @desc：选择库存设备
     * @author：justin
     * @date：2019-01-01 14:49
     */
    @RequestMapping(params = "selectStoreDetail")
    public ModelAndView selectStoreDetail(HttpServletRequest request) {
        String hid = request.getParameter("id");//行项目标识id
        request.setAttribute("hid", hid);
        String storeCode = request.getParameter("storeCode");//仓库编码
        request.setAttribute("storeCode", storeCode);
        return new ModelAndView("com/nic/store/selectStoreDetail");
    }

    /**
     * @desc：查询库存信息
     * @author：justin
     * @date：2019-01-01 14:54
     */
    @RequestMapping(params = "datagridChoose")
    public void datagridChoose(StoreDetailPage storeDetail, HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
        //手工转换minidao查询规则
        if (oConvertUtils.isNotEmpty(storeDetail.getMaktx())) {
            storeDetail.setMaktx(storeDetail.getMaktx().replace("*", "%"));
        }
        MiniDaoPage storeDetailList = storeDetailService.queryStoreDetailList(storeDetail, dataGrid.getPage(), dataGrid.getRows());
        dataGrid.setResults(storeDetailList.getResults());
        dataGrid.setTotal(storeDetailList.getTotal());
        TagUtil.datagrid(response, dataGrid);
    }
}
