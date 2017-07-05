package com.csi.service.impl;

import com.csi.dao.ShareMapper;
import com.csi.entity.Share;
import com.csi.service.ShareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yangguang on 2017/7/3.
 */
@Service
public class ShareServiceImpl implements ShareService {

    @Autowired
    private ShareMapper shareMapper;

    public List<Share> query(String classify) {
        return shareMapper.query(classify);
    }

    public void add(Share share) {
        shareMapper.add(share);
    }

}
