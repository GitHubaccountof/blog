package com.spring.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.blog.entity.Content;
import com.spring.blog.service.ContentService;

@Controller
public class GreetingController {
    @Autowired
    private ContentService contentService;

    @GetMapping("/test")
    public String greeting(@RequestParam(name = "name", required = false, defaultValue = "World") String name, Model model) {
        Iterable<Content> contents = contentService.findAll();
        model.addAttribute("name", name);
        model.addAttribute("contents", contents);
        return "test";
    }

    @GetMapping("/blog/{id}")
    public String greeting(@PathVariable Long id, Model model) {
        Content content = contentService.findById(id);
        model.addAttribute("content", content);
        return "blog";
    }

    @GetMapping("/blog")
    public String blog() {
        return "blog";
    }

    @GetMapping("/create_page")
    public String create() {
        return "create";
    }

    @GetMapping("/")
    public String main(Model model) {
        model.addAttribute("some", "hello, letsCode!");
        return "main";
    }
}
