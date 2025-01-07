package com.thinkpower.kotlinspring.demo.model.repository

import com.thinkpower.kotlinspring.demo.model.entity.Article
import com.thinkpower.kotlinspring.demo.model.entity.Author
import org.springframework.data.repository.CrudRepository

interface ArticleRepository : CrudRepository<Article, Long> {
    fun findBySlug(slug: String): Article?
    fun findAllByOrderByAddedAtDesc(): Iterable<Article>
}

interface UserRepository : CrudRepository<Author, Long> {
    fun findByLogin(login: String): Author?
}