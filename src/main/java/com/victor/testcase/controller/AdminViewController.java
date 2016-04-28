package com.victor.testcase.controller;

import com.victor.testcase.dao.AdminDao;
import com.victor.testcase.dao.entity.RenderingEngine;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminViewController {

    @Autowired
    @Qualifier("hibernateDao")
    private AdminDao dao;

    @RequestMapping(value = "/table", method = RequestMethod.GET)
    public Model getTablePage(Model model) {
        dao.openSession();
        List<RenderingEngine> tableContent = dao.getAllRows();
        dao.closeSession();
        model.addAttribute("tableContent", tableContent); //Engine Table content
        model.addAttribute("engineObject", new RenderingEngine());//binding html form with associated bean
        return model;
    }

    @RequestMapping(value = "/diagram", method = RequestMethod.GET)
    public String getDiagramPage() {
        return "diagram";
    }

    @RequestMapping(value = "/create/engine", method = RequestMethod.POST)
    public String createNewEngine(@ModelAttribute("engineObject") RenderingEngine engine, Model model) {
        dao.openSession();
        dao.createEngine(engine);
        dao.closeSession();
        return "redirect:/table";
    }

    @RequestMapping(value = "/update/engine", method = RequestMethod.POST)
    public String updateEngine(@ModelAttribute("engineObject") RenderingEngine engine, Model model) {
        dao.openSession();
        dao.updateEngine(engine);
        dao.closeSession();
        return "redirect:/table";
    }
    
    @RequestMapping(value = "/delete/engine/{id}", method = RequestMethod.POST)
    public String deleteEngine(@PathVariable("id") int id) {
        dao.openSession();
        dao.deleteEngine(id);
        dao.closeSession();
        return "redirect:/table";
    }
}
