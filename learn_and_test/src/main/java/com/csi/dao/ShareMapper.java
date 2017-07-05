package com.csi.dao;

import com.csi.entity.Share;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by yangguang on 2017/7/3.
 */
public interface ShareMapper {
    //查询所有分享
    List<Share> query(@Param("classify") String classify);

    //发布分享
    void add(Share share);

}
