package com.nic.web.page.store;

import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreMovePage
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-03 11:31
 */
public class StoreMovePage implements Serializable {
    /**
     * ID
     */
    private String id;
    /**
     * 单据号
     */
    private String orderNo;
    /**
     * 仓库编码
     */
    private String storeFromCode;
    /**
     * 仓库名称
     */
    private String storeFromName;
    /**
     * 仓库编码
     */
    private String storeToCode;
    /**
     * 仓库名称
     */
    private String storeToName;
    /**
     * 物料类型
     */
    private String maraType;
    /**
     * 物料编码
     */
    private String matnr;
    /**
     * 物料名称
     */
    private String maktx;
    /**
     * 物料单位
     */
    private String unit;
    /**
     * 物料型号
     */
    private String model;
    /**
     * 物料规格
     */
    private String norms;
    /**
     * 转仓数量
     */
    private Integer num;

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

    public String getStoreFromCode() {
        return storeFromCode;
    }

    public void setStoreFromCode(String storeFromCode) {
        this.storeFromCode = storeFromCode;
    }

    public String getStoreFromName() {
        return storeFromName;
    }

    public void setStoreFromName(String storeFromName) {
        this.storeFromName = storeFromName;
    }


    public String getStoreToCode() {
        return storeToCode;
    }

    public void setStoreToCode(String storeToCode) {
        this.storeToCode = storeToCode;
    }

    public String getStoreToName() {
        return storeToName;
    }

    public void setStoreToName(String storeToName) {
        this.storeToName = storeToName;
    }

    public String getMaraType() {
        return maraType;
    }

    public void setMaraType(String maraType) {
        this.maraType = maraType;
    }

    public String getMatnr() {
        return matnr;
    }

    public void setMatnr(String matnr) {
        this.matnr = matnr;
    }

    public String getMaktx() {
        return maktx;
    }

    public void setMaktx(String maktx) {
        this.maktx = maktx;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getNorms() {
        return norms;
    }

    public void setNorms(String norms) {
        this.norms = norms;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
