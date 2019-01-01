package com.nic.web.entity.mdm;

import com.nic.web.entity.base.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @version V0.1
 * @项目名称：jeecg
 * @类名称：MaraTypeEntity
 * @类描述：
 * @创建人：justin
 * @创建时间：2018-12-28 10:49
 */
@Entity
@Table(name = "mara_type")
public class MaraTypeEntity extends BaseEntity implements Serializable {
    /**
     * 设备类型编码
     */
    private String code;
    /**
     * 设备类型名称
     */
    private String name;

    @Column(name = "code")
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
