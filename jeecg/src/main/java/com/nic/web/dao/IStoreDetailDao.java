package com.nic.web.dao;

import com.nic.web.page.store.StoreDetailPage;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreDetailDao
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 15:00
 */
@MiniDao
public interface IStoreDetailDao {
    /**
     * @desc：分页查询库存信息
     * @author：justin
     * @date：2019-01-01 15:00
     */
    @Arguments({"storeDetail", "page", "rows"})
    @ResultType(StoreDetailPage.class)
    public MiniDaoPage queryStoreDetailList(StoreDetailPage storeDetail, int page, int rows);

    /**
     * @desc：分页查询库存信息
     * @author：justin
     * @date：2019-01-03 10:31
     */
    @Arguments({"storeDetail", "page", "rows"})
    @ResultType(StoreDetailPage.class)
    public MiniDaoPage datagrid(StoreDetailPage storeDetail, int page, int rows);
}
