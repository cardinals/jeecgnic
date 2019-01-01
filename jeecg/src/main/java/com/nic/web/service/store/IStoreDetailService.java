package com.nic.web.service.store;

import com.nic.web.page.store.StoreDetailPage;
import org.jeecgframework.core.common.service.CommonService;
import org.jeecgframework.minidao.pojo.MiniDaoPage;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：IStoreDetailService
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 13:04
 */
public interface IStoreDetailService extends CommonService {
    /**
     * @desc：分页查询库存信息
     * @author：justin
     * @date：2019-01-01 15:00
     */
    public MiniDaoPage queryStoreDetailList(StoreDetailPage storeDetail, int page, int rows);
}
