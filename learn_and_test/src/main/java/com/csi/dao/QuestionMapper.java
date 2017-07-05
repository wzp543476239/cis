package com.csi.dao;

import com.csi.entity.Question;

public interface QuestionMapper {
  /*  int deleteByPrimaryKey(Integer id);

    int insert(Question record);

    int insertSelective(Question record);

    Question selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKey(Question record);*/

  void insertQuestion(Question  question);
}