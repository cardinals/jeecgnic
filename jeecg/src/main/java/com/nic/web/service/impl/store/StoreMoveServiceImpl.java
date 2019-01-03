package com.nic.web.service.impl.store;

import com.nic.web.dao.IStoreMoveDao;
import com.nic.web.entity.store.StoreMoveEntity;
import com.nic.web.page.store.StoreMovePage;
import com.nic.web.service.store.IStoreMoveService;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.minidao.pojo.MiniDaoPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreMoveServiceImpl
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-03 11:34
 */
@Service
@Transactional
public class StoreMoveServiceImpl extends CommonServiceImpl implements IStoreMoveService {
    @Autowired
    private IStoreMoveDao storeMoveDao;

    @Override
    public MiniDaoPage searchStoreMoveList(StoreMovePage storeMove, int page, int rows) {
        return storeMoveDao.searchStoreMoveList(storeMove, page, rows);
    }

    @Override
    public void saveStoreMove(StoreMoveEntity storeMove) {
        this.save(storeMove);
        //更新库存信息
        //转出仓扣减库存
        commonDao.executeSql("update store_detail set total_num=total_num-? where store_code=? and matnr=?", storeMove.getNum(), storeMove.getStoreFromCode(), storeMove.getMatnr());
        //转入仓增加库存
        commonDao.executeSql("update store_detail set total_num=total_num+? where store_code=? and matnr=?", storeMove.getNum(), storeMove.getStoreToCode(), storeMove.getMatnr());
    }
}
