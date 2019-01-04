package com.nic.web.service.store;

import com.nic.web.page.store.StoreOrderLinePage;
import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreOrderLineService
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 19:22
 */
public interface IStoreOrderLineService extends CommonService {
    /**
     * @desc：根据单号获取行项信息
     * @author：justin
     * @date：2019-01-01 09:50
     */
    public List<StoreOrderLinePage> queryLinesByOrderNo(String orderNo);

    /**
     * @desc：分页查询设备使用情况
     * @author：justin
     * @date：2019-01-04 15:40
     */
    public MiniDaoPage queryMaraUseReport(StoreOrderLinePage orderLine, int page, int rows);
}
