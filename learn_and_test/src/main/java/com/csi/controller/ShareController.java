package com.csi.controller;

import com.csi.entity.Share;
import com.csi.service.ShareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

/**
 * Created by yangguang on 2017/7/3.
 */
@Controller
@RequestMapping("share")
public class ShareController {
    @Autowired
    private ShareService shareService;

    @RequestMapping("/share.do")
    public String queryShare(@RequestParam(required = false) String classify, ModelMap map){
        List<Share> list = shareService.query(classify);
        map.put("list",list);
        return "queryShare";
    }

    //跳转发布页面
    @RequestMapping("/toAdd.do")
    public String toAdd(){
        return "add";
    }

    //处理发布操作
    @RequestMapping("/doAdd.do")
    public String doAdd(Share share, ModelMap map){
            share.setCreateDate(new Date());
            shareService.add(share);
            map.put("msg", "发布成功");
            return "add";
    }
}
