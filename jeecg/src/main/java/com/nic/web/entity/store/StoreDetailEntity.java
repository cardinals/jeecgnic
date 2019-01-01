package com.nic.web.entity.store;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：StoreDetailEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2019-01-01 13:01
 */
@Entity
@Table(name = "store_detail")
public class StoreDetailEntity extends BaseEntity implements Serializable {
    /**
     * 仓库编码
     */
    private String storeCode;
    /**
     * 物料编码
     */
    private String matnr;
    /**
     * 库存数量
     */
    private Integer totalNum;

    @Column(name = "store_code")
    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
    }

    @Column(name = "matnr")
    public String getMatnr() {
        return matnr;
    }

    public void setMatnr(String matnr) {
        this.matnr = matnr;
    }

    @Column(name = "total_num")
    public Integer getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }
}
