package com.victor.testcase.controller;

import com.victor.testcase.dao.AdminDao;
import com.victor.testcase.dao.entity.RenderingEngine;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdminRestController {

    @Autowired
    @Qualifier("hibernateDao")
    private AdminDao dao;
    
    @RequestMapping(value = "/api/engines", method = RequestMethod.GET)
    public List<RenderingEngine> getAllEngines(){
        dao.openSession();
        List<RenderingEngine> engines = dao.getAllRows();
        dao.closeSession();
        return engines;//response format shoud be specified in request url. Current implementation supports only JSON.
    }
}
