package com.csi.service.impl;

import com.csi.dao.QuestionMapper;
import com.csi.entity.Question;
import com.csi.service.QuestionService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by 王晶 on 2017/7/3 0003.
 */

@Service
@Transactional
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionMapper questionMapper;

    public void add(@Param("question") Question question) {

        questionMapper.insertQuestion(question);

    }
}
