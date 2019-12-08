package com.spring.blog.service;

import com.spring.blog.entity.Content;
import com.spring.blog.repository.ContentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContentService {
    private ContentRepository contentRepository;

    @Autowired
    public ContentService(ContentRepository contentRepository) {
        this.contentRepository = contentRepository;
    }

    public Content findById(long id) {
        return contentRepository.findById(id)
                .orElse(null);
    }

    public void save(Content content) {
        contentRepository.save(content);
    }

    public Iterable<Content> findAll() {
        return contentRepository.findAll();
    }

    public void deleteById(Long id) {
        contentRepository.deleteById(id);
    }
}
