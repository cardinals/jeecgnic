package com.nic.web.service.store;

import com.nic.web.entity.store.StoreOrderEntity;
import com.nic.web.entity.store.StoreOrderLineEntity;
import com.nic.web.page.store.StoreOrderPage;
import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreOrderService
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 17:34
 */
public interface IStoreOrderService extends CommonService {
    /**
     * @desc：保存入库单信息
     * @author：justin
     * @date：2018-12-28 19:24
     */
    public void saveStoreOrder(StoreOrderEntity storeOrder, List<StoreOrderLineEntity> orderLines);

    /**
     * @desc：修改入库单信息
     * @author：justin
     * @date：2018-12-28 19:58
     */
    public void updateStoreOrder(StoreOrderEntity so, List<StoreOrderLineEntity> orderLines);

    /**
     * @desc：分页查询入库单列表
     * @author：justin
     * @date：2019-01-01 11:26
     */
    public MiniDaoPage queryStoreOrderList(StoreOrderPage orderPage, int page, int rows);

    /**
     * @desc：删除入库单
     * @author：justin
     * @date：2019-01-01 12:53
     */
    public void delStoreOrderById(String id, String orderType);
}
