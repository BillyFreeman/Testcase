package com.victor.testcase.dao.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tc_rendering_engines")
public class RenderingEngine implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Column(name = "engine_name", nullable = false)
    private String name;
    @Column(name = "browser_name", nullable = false)
    private String browser;
    @Column(name = "platform", nullable = true)
    private String platform;
    @Column(name = "engine_version", nullable = true)
    private String version;
    @Column(name = "css_grade", nullable = false)
    private String cssGrade;

    public RenderingEngine() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrowser() {
        return browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getCssGrade() {
        return cssGrade;
    }

    public void setCssGrade(String cssGrade) {
        this.cssGrade = cssGrade;
    }
}
