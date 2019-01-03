package com.nic.web.service.store;

import com.nic.web.entity.store.StoreMoveEntity;
import com.nic.web.page.store.StoreMovePage;
import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreMoveService
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-03 11:34
 */
public interface IStoreMoveService extends CommonService {
    /**
     * @desc：分页查询转仓订单
     * @author：justin
     * @date：2019-01-03 11:41
     */
    public MiniDaoPage searchStoreMoveList(StoreMovePage storeMove, int page, int rows);

    /**
     * @desc：保存转仓单据
     * @author：justin
     * @date：2019-01-03 13:07
     */
    public void saveStoreMove(StoreMoveEntity storeMove);
}
