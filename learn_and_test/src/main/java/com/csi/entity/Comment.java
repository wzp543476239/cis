package com.csi.entity;

import java.util.Date;

/**
 * Created by yangguang on 2017/7/3.
 * 评论表
 */
public class Comment {
    private int id;             //主键ID
    private int s_id;           //分享表ID
    private String content;     //评论内容
    private String createBy;    //评论人
    private Date createDate;    //评论时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
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
