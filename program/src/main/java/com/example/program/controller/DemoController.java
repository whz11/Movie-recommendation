package com.example.program.controller;


import com.example.program.model.Entity;
import com.example.program.service.DemoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Controller
public class DemoController {

    @Autowired
    DemoService demoService;


    @RequestMapping("/")
    public String index() {
        return "redirect:/history";
    }
    @RequestMapping("/history")
    public String history(Model model){
        List movie=demoService.getHistory();
        model.addAttribute("movie",movie);
        return "history";
    }

    @RequestMapping("/list")
    public String list(Model model,
                       @RequestParam(defaultValue = "1") int pageNum,
                       @RequestParam(defaultValue = "15") int pageSize) {
        PageInfo page=demoService.getList(pageNum,pageSize);
        model.addAttribute("page", page);
        return "index";
    }
    @RequestMapping("/search")
    public String search(Model model,
                         @RequestParam LocalDate date){

        Entity entity=demoService.getOne(date);
        model.addAttribute("entity",entity);
        return "index";
    }
    @RequestMapping("/toList")
    public String toList(){
        return "redirect:/list";
    }
    @RequestMapping("/toHistory")
    public String toHistory(){
        return "redirect:/history";
    }
}
/*
    @RequestMapping("/toEdit")
    public String toEdit(Model model,Long id) {
        Entity user=demoService.findUserById(id);
        model.addAttribute("user", user);
        return "user/userEdit";
    }

    @RequestMapping("/edit")
    public String edit(Entity entity) {
        demoService.edit(entity);
        return "redirect:/list";
    }


    @RequestMapping("/delete")
    public String delete(Long id) {
        userService.delete(id);
        return "redirect:/list";
    }
}
}
*/