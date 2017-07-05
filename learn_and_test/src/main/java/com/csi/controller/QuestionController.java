package com.csi.controller;

import com.csi.entity.Question;
import com.csi.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by 王晶 on 2017/7/3 0003.
 */

@Controller
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @RequestMapping(value = "/question_add",method = RequestMethod.POST)
    public String addQuestion(@RequestParam("paper_id") int paper_id, @RequestParam("course")String course,
                              @RequestParam("title")String title,@RequestParam("question_type")String question_type,
                              @RequestParam("optionA")String optionA,@RequestParam("optionB")String optionB,
                              @RequestParam("optionC")String optionC,@RequestParam("optionD")String optionD,
                              @RequestParam("answer")String answer,@RequestParam("score")int score,
                              HttpServletRequest request
                              ){

        Question question = new Question();

        question.setTitle(title);
        question.setAnswer(answer);
        question.setQuestionType(question_type);
        question.setOptionA(optionA);
        question.setOptionB(optionB);
        question.setOptionC(optionC);
        question.setOptionD(optionD);
        question.setScore(score);
        question.setCourse(course);
        question.setPaperId(paper_id);

        questionService.add(question);

        request.setAttribute("paper_id",paper_id);
        request.setAttribute("course",course);

        return "question_ok";
    }

}
