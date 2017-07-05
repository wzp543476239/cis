package com.csi.controller;

import com.csi.entity.TestPaper;
import com.csi.service.TestPaperService;
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
public class TestPaperController {

    @Autowired
    private TestPaperService testPaperService;

    @RequestMapping(value = "/test_paper_add",method = RequestMethod.POST)
    public String addTestPaper(@RequestParam("test_name") String test_name,
                               @RequestParam("course")String course,
                               HttpServletRequest request){

        TestPaper testPaper = new TestPaper();

        testPaper.setTestName(test_name);
        testPaper.setCourse(course);

        testPaperService.add(testPaper);

        request.setAttribute("testPaper",testPaper);

        return "questions_add";
    }
}
