package com.csi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by PC on 2017/6/28.
 */
@Controller
@RequestMapping("test")
public class Test {

    @RequestMapping("/test")
    public void test(HttpServletRequest request,Integer id){
      /*  System.out.println(id);
        request.setAttribute("",111);*/
        List personInfoByCardId = new ArrayList();
        request.setAttribute("list",personInfoByCardId);
        
      //  return "test";
    }

}
