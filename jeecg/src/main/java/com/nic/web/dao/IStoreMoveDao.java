package com.nic.web.dao;

import com.nic.web.page.store.StoreMovePage;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreMoveDao
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-03 11:33
 */
@MiniDao
public interface IStoreMoveDao {
    /**
     * @desc：分页查询转仓订单
     * @author：justin
     * @date：2019-01-03 11:41
     */
    @Arguments({"storeMove", "page", "rows"})
    @ResultType(StoreMovePage.class)
    public MiniDaoPage searchStoreMoveList(StoreMovePage storeMove, int page, int rows);
}
