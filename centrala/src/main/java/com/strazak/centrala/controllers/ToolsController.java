package com.strazak.centrala.controllers;

import com.strazak.centrala.models.Tools;
import com.strazak.centrala.services.ToolsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ToolsController {
    @Autowired
    private ToolsService toolsService;

    @GetMapping("/toolsList")
    public String toolsList(Model model){
        model.addAttribute("tools", toolsService.findAll());
        return "/toolsList";
    }

    @GetMapping("/addTool")
    public String addToolsForm(){
        return "/addTools";
    }

    @PostMapping("/addTool")
    public String addTools(Tools tools){
        System.out.println(tools.getId());
        toolsService.update(tools);
        return "redirect:/toolsList";
    }

    @GetMapping("/editTool/{id}")
    public String editToolsForm(@PathVariable Long id, Model model){
        model.addAttribute("tool", toolsService.findById(id).get());
        return "/addTools";
    }

    @GetMapping("/deleteTool/{id}")
    public String deleteTools(@PathVariable Long id){
        toolsService.deleteById(id);
        return "redirect:/toolsList";
    }
}
