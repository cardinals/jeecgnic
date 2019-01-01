package com.nic.web.service.impl.store;

import com.nic.web.dao.IStoreOrderLineDao;
import com.nic.web.page.store.StoreOrderLinePage;
import com.nic.web.service.store.IStoreOrderLineService;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreOrderLineServiceImpl
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 19:22
 */
@Service
@Transactional
public class StoreOrderLineServiceImpl extends CommonServiceImpl implements IStoreOrderLineService {
    @Autowired
    private IStoreOrderLineDao storeOrderLineDao;

    @Override
    public List<StoreOrderLinePage> queryLinesByOrderNo(String orderNo) {
        return storeOrderLineDao.queryLinesByOrderNo(orderNo);
    }
}
