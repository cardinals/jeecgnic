package com.nic.web.page.store;

import com.nic.web.entity.store.StoreOrderLineEntity;

import java.io.Serializable;
import java.util.List;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreOrderPage
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 18:34
 */
public class StoreOrderPage implements Serializable {

    /**
     * ID
     */
    private String id;

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
     * 仓库编码
     */
    private String storeName;
    /**
     * 出入库人姓名
     */
    private String operatorName;
    /**
     * 出入库时间
     */
    private String operatorTime;

    private List<StoreOrderLineEntity> orderLines;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public List<StoreOrderLineEntity> getOrderLines() {
        return orderLines;
    }

    public void setOrderLines(List<StoreOrderLineEntity> orderLines) {
        this.orderLines = orderLines;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    public String getOperatorTime() {
        return operatorTime;
    }

    public void setOperatorTime(String operatorTime) {
        this.operatorTime = operatorTime;
    }
}
