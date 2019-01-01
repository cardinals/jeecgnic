package com.nic.web.entity.mdm;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：SchoolAreaEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-26 14:42
 */
@Entity
@Table(name = "school_area")
public class SchoolAreaEntity extends BaseEntity implements Serializable {
    /**
     * 校区编码
     */
    private String areaCode;
    /**
     * 校区名称
     */
    private String areaName;
    /**
     * 校区管理员姓名
     */
    private String managers;

    @Column(name = "area_code")
    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    @Column(name = "area_name")
    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }


    @Transient
    public String getManagers() {
        return managers;
    }

    public void setManagers(String managers) {
        this.managers = managers;
    }
}
