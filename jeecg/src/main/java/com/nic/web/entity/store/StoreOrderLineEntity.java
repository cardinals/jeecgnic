package com.nic.web.entity.store;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreOrderLineEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 17:54
 */
@Entity
@Table(name = "store_order_line")
public class StoreOrderLineEntity extends BaseEntity implements Serializable {
    /**
     * 单据号
     */
    private String orderNo;
    /**
     * 物料编码
     */
    private String matnr;
    /**
     * 数量
     */
    private Integer num;

    @Column(name = "order_no")
    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
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
