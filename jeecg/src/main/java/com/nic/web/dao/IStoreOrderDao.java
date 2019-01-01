package com.nic.web.dao;

import com.nic.web.page.store.StoreOrderPage;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreOrderDao
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 11:27
 */
@MiniDao
public interface IStoreOrderDao {

    /**
     * @desc：分页查询入库单列表
     * @author：justin
     * @date：2019-01-01 11:26
     */
    @Arguments({"orderPage", "page", "rows"})
    @ResultType(StoreOrderPage.class)
    public MiniDaoPage queryStoreOrderList(StoreOrderPage orderPage, int page, int rows);
}
