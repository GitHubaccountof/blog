package com.spring.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.blog.entity.Content;
import com.spring.blog.service.ContentService;

@Controller
public class MainController {
    private ContentService contentService;

    @Autowired
    public MainController(ContentService contentService) {
        this.contentService = contentService;
    }

    @GetMapping("/blog/{id}")
    public String greeting(@PathVariable Long id, Model model) {
        Content content = contentService.findById(id);
        model.addAttribute("content", content);
        return "blog";
    }

    @PostMapping("/delete_post/{id}")
    public String delete_post(@PathVariable Long id) {
        contentService.deleteById(id);
        return "redirect:/";
    }

    @GetMapping("/")
    public String home(@RequestParam(name = "name", required = false, defaultValue = "World") String name, Model model) {
        model.addAttribute("name", name);
        model.addAttribute("blogs", contentService.findAll());
        return "main";
    }
}
