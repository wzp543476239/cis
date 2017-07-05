package com.csi.service.impl;

import com.csi.dao.TestPaperMapper;
import com.csi.entity.TestPaper;
import com.csi.service.TestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by 王晶 on 2017/7/3 0003.
 */

@Service
@Transactional
public class TestPaperServiceImpl implements TestPaperService {

    @Autowired
    private TestPaperMapper testPaperMapper;

    public void add(TestPaper testPaper) {

        testPaperMapper.insertTestPaper(testPaper);

    }
}
