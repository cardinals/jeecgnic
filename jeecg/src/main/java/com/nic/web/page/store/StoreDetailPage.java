package com.nic.web.page.store;

import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreDetailPage
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 14:54
 */
public class StoreDetailPage implements Serializable {
    /**
     * ID
     */
    private String id;
    /**
     * 仓库编码
     */
    private String storeCode;
    /**
     * 仓库编码
     */
    private String storeName;
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
     * 库存数量
     */
    private Integer totalNum;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public Integer getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }
}
