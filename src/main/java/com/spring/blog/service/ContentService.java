package com.spring.blog.service;

import com.spring.blog.entity.Content;
import com.spring.blog.repository.ContentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContentService {
    @Autowired
    private ContentRepository contentRepository;

    public Content findById(long id) {
        return contentRepository.findById(id)
                .orElse(null);
    }

    public Iterable<Content> findAll() {
        return contentRepository.findAll();
    }
}
