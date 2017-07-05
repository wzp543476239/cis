package com.csi.entity;

import java.util.Date;

/**
 * Created by yangguang on 2017/7/3.
 * 回复表
 */
public class Reply {
    private int id;             //主键ID
    private int c_id;           //评论表ID
    private String content;     //回复内容
    private String createBy;    //回复人
    private Date createDate;    //回复时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
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
}
