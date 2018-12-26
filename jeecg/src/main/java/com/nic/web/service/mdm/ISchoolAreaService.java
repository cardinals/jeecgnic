package com.nic.web.service.mdm;

import com.nic.web.entity.mdm.SchoolAreaEntity;
import org.jeecgframework.core.common.service.CommonService;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：ISchoolAreaService
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-26 14:40
 */
public interface ISchoolAreaService extends CommonService {
    /**
     * @desc：保存校区信息，及校区管理员信息
     * @author：justin
     * @date：2018-12-26 17:26
     */
    public void saveSchoolArea(SchoolAreaEntity schoolArea, String[] userIds);

    public void delSchoolArea(String id);
}
