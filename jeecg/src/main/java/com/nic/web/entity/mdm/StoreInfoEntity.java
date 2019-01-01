package com.nic.web.entity.mdm;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreInfoEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 10:50
 */
@Entity
@Table(name = "store_info")
public class StoreInfoEntity extends BaseEntity implements Serializable {
    /**
     * 仓库编码
     */
    private String storeCode;
    /**
     * 仓库名称
     */
    private String storeName;
    /**
     * 仓库地址
     */
    private String address;
    /**
     * 管理员
     */
    private String manager;
    /**
     * 联系电话
     */
    private String telphone;

    @Column(name = "store_code")
    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
    }

    @Column(name = "store_name")
    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "manager")
    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    @Column(name = "telphone")
    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }
}
