package com.spring.blog.repository;

import com.spring.blog.entity.Content;
import org.springframework.data.repository.CrudRepository;

public interface ContentRepository extends CrudRepository<Content, Long> {
    void deleteById(Long id);
}
