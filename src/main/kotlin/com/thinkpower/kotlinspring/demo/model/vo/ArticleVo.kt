package com.thinkpower.kotlinspring.demo.model.vo

import com.thinkpower.kotlinspring.demo.model.entity.Article
import com.thinkpower.kotlinspring.demo.model.entity.Author

fun Article.toVo() = ArticleVo(
    slug,
    title,
    headline,
    content,
    author,
    addedAt.toString()
)

data class ArticleVo(
    val slug: String,
    val title: String,
    val headline: String,
    val content: String,
    val author: Author,
    val addedAt: String)