package com.thinkpower.kotlinspring.demo.controller

import com.thinkpower.kotlinspring.demo.model.repository.ArticleRepository
import com.thinkpower.kotlinspring.demo.model.vo.toVo
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.ui.set
import org.springframework.web.bind.annotation.GetMapping

@Controller
class PageController(private val repository: ArticleRepository) {

    @GetMapping("/")
    fun blog(model: Model): String {
        model["title"] = "This is Blog Title"

        model["articles"] = repository.findAllByOrderByAddedAtDesc().map { it.toVo() }
        model["content"] = true
        return "blogHome"
    }
}