package com.nic.web.page.store;

import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreOrderLinePage
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 09:46
 */
public class StoreOrderLinePage implements Serializable {
    /**
     * id
     */
    private String id;
    /**
     * 物料编码
     */
    private String matnr;
    /**
     * 物料名称
     */
    private String maktx;
    /**
     * 单位
     */
    private String unit;
    /**
     * 型号
     */
    private String model;
    /**
     * 规格
     */
    private String norms;
    /**
     * 出入库数量
     */
    private Integer num;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
