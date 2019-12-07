package com.spring.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.blog.entity.Content;
import com.spring.blog.service.ContentService;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class GreetingController {
    private ContentService contentService;

    @Value("${upload.path}")
    private String uploadPath;

    @Autowired
    public GreetingController(ContentService contentService) {
        this.contentService = contentService;
    }

    @GetMapping("/blog/{id}")
    public String greeting(@PathVariable Long id, Model model) {
        Content content = contentService.findById(id);
        model.addAttribute("content", content);
        return "blog";
    }

    @GetMapping("/create_page")
    public String createPageView() {
        return "create";
    }

    @PostMapping("/create_page")
    public String createPage(@RequestParam String title,
                             @RequestParam String tag,
                             @RequestParam String description,
                             @RequestParam MultipartFile file, Model model) throws IOException {
        Content content = new Content(title, tag, description);

        if (file != null) {
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();

            String resultFilename = uuidFile.concat(".").concat(file.getOriginalFilename());

            file.transferTo(new File(uploadPath.concat("/").concat(resultFilename)));

            content.setImage(resultFilename);
        }

        contentService.save(content);
        return "redirect:/";
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("blogs", contentService.findAll());
        return "main";
    }
}
