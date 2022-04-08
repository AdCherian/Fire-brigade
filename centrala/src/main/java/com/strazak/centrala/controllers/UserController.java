package com.strazak.centrala.controllers;

import com.strazak.centrala.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.strazak.centrala.services.UserService;

import javax.annotation.PostConstruct;
import java.security.NoSuchAlgorithmException;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @PostConstruct
    public void createStartupModels() throws NoSuchAlgorithmException{
        User admin = new User(1L, "Admin", "Admin", "admin", "admin", "ADMIN", true);
        User firefighter = new User(2L, "Firefighter", "Firefighter", "firefighter", "firefighter", "FIREFIGHTER", true);
        User user = new User(3L, "User", "User", "user", "user", "USER", true);
        System.out.println(admin);
        userService.update(admin);
        userService.update(firefighter);
        userService.update(user);
    }

    @GetMapping("/register")
    public String registerForm(){
        return "/register";
    }

    @PostMapping("/register")
    public String register(User user){
        user.setRole("USER");
        user.setActive(true);
        System.out.println(user);
        userService.save(user);
        return "/index";
    }

    @GetMapping("/firefightersList")
    public String firefighters(Model model){
        model.addAttribute("users", userService.findAllFirefighters());
        return "/firefightersList";
    }

    @GetMapping("/addFirefighter")
    public String getAllUsers(Model model) {
        model.addAttribute("users", userService.findAll());
        return "/addFirefighter";
    }

    @GetMapping("/editUser/{id}")
    public String editUserForm(@PathVariable Long id, Model model){
        model.addAttribute("user", userService.findById(id).get());
        return "/editUser";
    }

    @PostMapping("/editUser")
    public String editUser(User user){
        String role = user.getRole();
        user = userService.findById(user.getId()).get();
        user.setRole(role);
        userService.save(user);
        return "redirect:/addFirefighter";
    }


}
