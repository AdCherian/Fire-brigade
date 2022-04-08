package com.strazak.centrala.controllers;

import com.strazak.centrala.models.Actions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import com.strazak.centrala.services.ActionsService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ActionsController {
    @Autowired
    private ActionsService actionsService;

    @GetMapping("/actions")
    public String actions(){
        return "/actions";
    }

    @GetMapping("/actionsList")
    public String actionsList(Model model){
        model.addAttribute("actions", actionsService.findAll());
        return "/actionsList";
    }

    @GetMapping("/addAction")
    public String addActionForm(){
        return "/addAction";
    }

    @PostMapping("/addAction")
    public String addAction(Actions action){
        actionsService.save(action);
        return "redirect:/actions";
    }

    @GetMapping("/deleteAction/{id}")
    public String removeAction(@PathVariable Long id){
        actionsService.deleteById(id);
        return "redirect:/actions";
    }

    @GetMapping("/editAction/{id}")
    public String editActionForm(@PathVariable Long id, Model model){
        model.addAttribute("action", actionsService.findById(id).get());
        return "/addAction";
    }
}
