package com.nic.web.entity.mdm;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：MaraEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 10:49
 */
@Entity
@Table(name = "mara")
public class MaraEntity extends BaseEntity implements Serializable {
    /**
     * '设备类型'
     */
    private String maraType;
    /**
     * 设备编码
     */
    private String matnr;
    /**
     * '设备名称
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
     * '规格'
     */
    private String norms;

    @Column(name = "matnr")
    public String getMatnr() {
        return matnr;
    }

    public void setMatnr(String matnr) {
        this.matnr = matnr;
    }

    @Column(name = "maktx")
    public String getMaktx() {
        return maktx;
    }

    public void setMaktx(String maktx) {
        this.maktx = maktx;
    }

    @Column(name = "unit")
    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    @Column(name = "mara_type")
    public String getMaraType() {
        return maraType;
    }

    public void setMaraType(String maraType) {
        this.maraType = maraType;
    }

    @Column(name = "model")
    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    @Column(name = "norms")
    public String getNorms() {
        return norms;
    }

    public void setNorms(String norms) {
        this.norms = norms;
    }
}
