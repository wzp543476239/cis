package com.csi.entity;

import java.util.Date;

/**
 * Created by yangguang on 2017/7/3.
 * 分享表（发布心得、疑问）
 */
public class Share {
    private int id;             //主键ID
    private String title;       //发布标题
    private String content;     //发布内容
    private String createBy;    //发布人
    private Date createDate;    //发布时间
    private String attribute;        //内容属性（心得 or 疑问）
    private String classify;           //技术分类

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getAttribute() {
        return attribute;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }
}
