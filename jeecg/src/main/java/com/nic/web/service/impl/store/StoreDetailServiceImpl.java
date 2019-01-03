package com.nic.web.service.impl.store;

import com.nic.web.dao.IStoreDetailDao;
import com.nic.web.page.store.StoreDetailPage;
import com.nic.web.service.store.IStoreDetailService;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.minidao.pojo.MiniDaoPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreDetailServiceImpl
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 13:03
 */
@Service
@Transactional
public class StoreDetailServiceImpl extends CommonServiceImpl implements IStoreDetailService {
    @Autowired
    private IStoreDetailDao storeDetailDao;

    @Override
    public MiniDaoPage queryStoreDetailList(StoreDetailPage storeDetail, int page, int rows) {
        return storeDetailDao.queryStoreDetailList(storeDetail, page, rows);
    }

    @Override
    public MiniDaoPage datagrid(StoreDetailPage storeDetail, int page, int rows) {
        return storeDetailDao.datagrid(storeDetail, page, rows);
    }
}
