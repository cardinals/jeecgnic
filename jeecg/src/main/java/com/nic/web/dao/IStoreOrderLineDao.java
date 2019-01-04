package com.nic.web.dao;

import com.nic.web.page.store.StoreOrderLinePage;
import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.annotation.Sql;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreOrderLineDao
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 09:52
 */
@MiniDao
public interface IStoreOrderLineDao {
    /**
     * @desc：根据单号获取行项信息
     * @author：justin
     * @date：2019-01-01 09:50
     */
    @Sql("select s.id,s.order_no,s.matnr,m.maktx,m.unit,m.model,m.norms,s.num,s.matnr_no,s.vender," +
            "s.vender_no,s.use_place " +
            "from store_order_line s left join mara m on m.matnr=s.matnr where s.order_no = :orderNo")
    @Arguments({"orderNo"})
    @ResultType(StoreOrderLinePage.class)
    public List<StoreOrderLinePage> queryLinesByOrderNo(String orderNo);

    /**
     * @desc：分页查询设备使用情况
     * @author：justin
     * @date：2019-01-04 15:40
     */
    @Arguments({"orderLine", "page", "rows"})
    @ResultType(StoreOrderLinePage.class)
    public MiniDaoPage queryMaraUseReport(StoreOrderLinePage orderLine, int page, int rows);
}
