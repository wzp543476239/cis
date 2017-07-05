package com.csi.dao;

import com.csi.entity.TestPaper;

public interface TestPaperMapper {
   /* int deleteByPrimaryKey(Integer id);

    int insert(TestPaper record);

    int insertSelective(TestPaper record);

    TestPaper selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TestPaper record);

    int updateByPrimaryKey(TestPaper record);*/
   void insertTestPaper(TestPaper testPaper);
}