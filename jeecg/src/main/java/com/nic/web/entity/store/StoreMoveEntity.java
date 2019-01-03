package com.nic.web.entity.store;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreMoveEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-03 11:26
 */
@Entity
@Table(name = "store_move")
public class StoreMoveEntity extends BaseEntity implements Serializable {
    /**
     * 单据号
     */
    private String orderNo;
    /**
     * 起始仓库
     */
    private String storeFromCode;
    /**
     * 目标仓库
     */
    private String storeToCode;
    /**
     * 转仓物料
     */
    private String matnr;
    /**
     * 转仓数量
     */
    private Integer num;

    @Column(name = "order_no")
    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    @Column(name = "store_from_code")
    public String getStoreFromCode() {
        return storeFromCode;
    }

    public void setStoreFromCode(String storeFromCode) {
        this.storeFromCode = storeFromCode;
    }

    @Column(name = "store_to_code")
    public String getStoreToCode() {
        return storeToCode;
    }

    public void setStoreToCode(String storeToCode) {
        this.storeToCode = storeToCode;
    }

    @Column(name = "matnr")
    public String getMatnr() {
        return matnr;
    }

    public void setMatnr(String matnr) {
        this.matnr = matnr;
    }

    @Column(name = "num")
    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
