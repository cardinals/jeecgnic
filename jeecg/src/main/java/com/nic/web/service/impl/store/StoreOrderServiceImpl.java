package com.nic.web.service.impl.store;

import com.nic.web.dao.IStoreOrderDao;
import com.nic.web.entity.store.StoreDetailEntity;
import com.nic.web.entity.store.StoreOrderEntity;
import com.nic.web.entity.store.StoreOrderLineEntity;
import com.nic.web.page.store.StoreOrderPage;
import com.nic.web.service.store.IStoreOrderService;
import com.nic.web.util.StaticParam;
import org.apache.commons.collections.CollectionUtils;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.minidao.pojo.MiniDaoPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreOrderServiceImpl
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 17:34
 */
@Service
@Transactional
public class StoreOrderServiceImpl extends CommonServiceImpl implements IStoreOrderService {
    @Autowired
    private IStoreOrderDao storeOrderDao;

    @Override
    public void saveStoreOrder(StoreOrderEntity storeOrder, List<StoreOrderLineEntity> orderLines) {
        /**保存-单据头信息*/
        this.save(storeOrder);
        /**单据行项赋值单据号字段*/
        String storeCode = storeOrder.getStoreCode();//仓库编码
        String orderType = storeOrder.getOrderType();//单据类型
        for (StoreOrderLineEntity line : orderLines) {
            line.setOrderNo(storeOrder.getOrderNo());
            if (StringUtil.equals(orderType, StaticParam.ORDER_IN)) {//入库单，增加库存
                //单条行项进行库存信息更新
                List<StoreDetailEntity> list = commonDao.findHql("from StoreDetailEntity where storeCode=? and matnr=?", storeCode, line.getMatnr());
                if (CollectionUtils.isNotEmpty(list)) {//库存信息表中存在数量，则进行更新
                    StoreDetailEntity sde = list.get(0);
                    sde.setTotalNum(sde.getTotalNum() + line.getNum());
                    this.updateEntitie(sde);
                } else {//库存信息表中不存在，则新增数据
                    StoreDetailEntity sde = new StoreDetailEntity();
                    sde.setStoreCode(storeCode);
                    sde.setMatnr(line.getMatnr());
                    sde.setTotalNum(line.getNum());
                    this.save(sde);
                }
            } else {//出库单，扣减库存
                List<StoreDetailEntity> list = commonDao.findHql("from StoreDetailEntity where storeCode=? and matnr=?", storeCode, line.getMatnr());
                if (CollectionUtils.isNotEmpty(list)) {
                    StoreDetailEntity sde = list.get(0);
                    sde.setTotalNum(sde.getTotalNum() - line.getNum());
                    this.updateEntitie(sde);
                } else {
                    throw new RuntimeException("数据错误！未找到相应的库存信息！");
                }
            }

        }
        /**保存-单据行项目*/
        this.batchSave(orderLines);
    }

    @Override
    public void updateStoreOrder(StoreOrderEntity so, List<StoreOrderLineEntity> orderLines) {
        this.updateEntitie(so);
        commonDao.executeSql("delete from store_order_line where order_no=?", so.getOrderNo());
        for (StoreOrderLineEntity line : orderLines) {
            line.setOrderNo(so.getOrderNo());
        }
        this.batchSave(orderLines);
    }

    @Override
    public MiniDaoPage queryStoreOrderList(StoreOrderPage orderPage, int page, int rows) {
        return storeOrderDao.queryStoreOrderList(orderPage, page, rows);
    }

    @Override
    public void delStoreOrderById(String orderNo, String orderType) {
        commonDao.executeSql("delete from store_order_line where order_no=?", orderNo);
        commonDao.executeSql("delete from store_order where order_no=?", orderNo);
    }
}
