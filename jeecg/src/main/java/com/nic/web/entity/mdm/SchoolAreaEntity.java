package com.nic.web.entity.mdm;

import org.jeecgframework.core.common.entity.IdEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.io.Serializable;
import java.util.Date;

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
public class SchoolAreaEntity extends IdEntity implements Serializable {
    /**
     * 校区编码
     */
    private String areaCode;
    /**
     * 校区名称
     */
    private String areaName;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 创建人ID
     */
    private String createBy;
    /**
     * 创建人名称
     */
    private String createName;
    /**
     * 修改时间
     */
    private Date updateDate;
    /**
     * 修改人
     */
    private String updateBy;
    /**
     * 修改人名称
     */
    private String updateName;
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

    /**
     * 方法: 取得Date
     *
     * @return: Date  创建时间
     */
    @Column(name = "create_date", nullable = true)
    public Date getCreateDate() {
        return this.createDate;
    }

    /**
     * 方法: 设置Date
     *
     * @param: Date  创建时间
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * 方法: 取得String
     *
     * @return: String  创建人ID
     */
    @Column(name = "create_by", nullable = true, length = 32)
    public String getCreateBy() {
        return this.createBy;
    }

    /**
     * 方法: 设置String
     *
     * @param: String  创建人ID
     */
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    /**
     * 方法: 取得String
     *
     * @return: String  创建人名称
     */
    @Column(name = "create_name", nullable = true, length = 32)
    public String getCreateName() {
        return this.createName;
    }

    /**
     * 方法: 设置String
     *
     * @param: String  创建人名称
     */
    public void setCreateName(String createName) {
        this.createName = createName;
    }

    /**
     * 方法: 取得Date
     *
     * @return: Date  修改时间
     */
    @Column(name = "update_date", nullable = true)
    public Date getUpdateDate() {
        return this.updateDate;
    }

    /**
     * 方法: 设置Date
     *
     * @param: Date  修改时间
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * 方法: 取得String
     *
     * @return: String  修改人ID
     */
    @Column(name = "update_by", nullable = true, length = 32)
    public String getUpdateBy() {
        return this.updateBy;
    }

    /**
     * 方法: 设置String
     *
     * @param: String  修改人ID
     */
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    /**
     * 方法: 取得String
     *
     * @return: String  修改人名称
     */
    @Column(name = "update_name", nullable = true, length = 32)
    public String getUpdateName() {
        return this.updateName;
    }

    /**
     * 方法: 设置String
     *
     * @param: String  修改人名称
     */
    public void setUpdateName(String updateName) {
        this.updateName = updateName;
    }

    @Transient
    public String getManagers() {
        return managers;
    }

    public void setManagers(String managers) {
        this.managers = managers;
    }
}
