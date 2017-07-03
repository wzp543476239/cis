package com.csi.entity;

public class TestPaper {
    private Integer id;

    private String questionIds;

    private Integer scordid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQuestionIds() {
        return questionIds;
    }

    public void setQuestionIds(String questionIds) {
        this.questionIds = questionIds == null ? null : questionIds.trim();
    }

    public Integer getScordid() {
        return scordid;
    }

    public void setScordid(Integer scordid) {
        this.scordid = scordid;
    }
}