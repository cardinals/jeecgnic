package com.nic.web.entity.mdm;

import org.jeecgframework.core.common.entity.IdEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：SchoolAreaUserEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-26 17:31
 */
@Entity
@Table(name = "school_area_user")
public class SchoolAreaUserEntity extends IdEntity {
    /**
     * 校区ID
     */
    private String areaId;
    /**
     * 人员ID
     */
    private String userId;

    @Column(name = "area_id")
    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    @Column(name = "user_id")
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
