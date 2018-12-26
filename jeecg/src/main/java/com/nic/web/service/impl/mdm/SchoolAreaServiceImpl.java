package com.nic.web.service.impl.mdm;

import com.nic.web.entity.mdm.SchoolAreaEntity;
import com.nic.web.entity.mdm.SchoolAreaUserEntity;
import com.nic.web.service.mdm.ISchoolAreaService;
import org.apache.commons.lang.StringUtils;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;
import org.jeecgframework.core.util.StringUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：SchoolAreaServiceImpl
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-26 14:41
 */
@Service
@Transactional
public class SchoolAreaServiceImpl extends CommonServiceImpl implements ISchoolAreaService {

    @Override
    public void saveSchoolArea(SchoolAreaEntity schoolArea, String[] userIds) {
        if (StringUtil.isNotEmpty(schoolArea.getId())) {
            commonDao.executeSql("delete from school_area_user where area_id=?", schoolArea.getId());
            this.commonDao.updateEntitie(schoolArea);
        } else {
            //保存校区信息
            this.commonDao.save(schoolArea);
        }
        //保存校区与人员关系（校区管理员信息）
        if (userIds != null && userIds.length > 0) {
            for (int i = 0; i < userIds.length; i++) {
                if (StringUtils.isBlank(userIds[i])) continue;
                SchoolAreaUserEntity areaUser = new SchoolAreaUserEntity();
                areaUser.setAreaId(schoolArea.getId());
                areaUser.setUserId(userIds[i]);
                commonDao.save(areaUser);
            }
        }
    }

    @Override
    public void delSchoolArea(String id) {
        commonDao.executeSql("delete from school_area_user where area_id=?", id);
        commonDao.executeSql("delete from school_area where id=?", id);
    }
}
