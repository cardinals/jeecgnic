package com.nic.web.entity.store;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreOrderEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 16:07
 */
@Entity
@Table(name = "store_order")
public class StoreOrderEntity extends BaseEntity implements Serializable {
    /**
     * 单据号
     */
    private String orderNo;
    /**
     * 订单类型
     */
    private String orderType;
    /**
     * 仓库编码
     */
    private String storeCode;
    /**
     * 出入库人姓名
     */
    private String operatorName;
    /**
     * 出入库时间
     */
    private String operatorTime;

    @Column(name = "order_no")
    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    @Column(name = "order_type")
    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    @Column(name = "store_code")
    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
    }

    @Column(name = "operator_name")
    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    @Column(name = "operator_time")
    public String getOperatorTime() {
        return operatorTime;
    }

    public void setOperatorTime(String operatorTime) {
        this.operatorTime = operatorTime;
    }
}
