package com.spring.blog.controller.admin;

import com.spring.blog.entity.Content;
import com.spring.blog.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("create_page")
@PreAuthorize("hasAuthority('ADMIN')")
public class CreatePageController {
    private ContentService contentService;

    @Autowired
    public CreatePageController(ContentService contentService) {
        this.contentService = contentService;
    }

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping
    public String createPageView() {
        return "create";
    }

    @PostMapping
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

}
