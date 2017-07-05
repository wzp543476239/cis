package com.csi.service;

import com.csi.entity.Share;

import java.util.List;

/**
 * Created by yangguang on 2017/7/3.
 */
public interface ShareService {
    //查询所有分享
    List<Share> query(String classify);

    //发布分享
    void add(Share share);


}
