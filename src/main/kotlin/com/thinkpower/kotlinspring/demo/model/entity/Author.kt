package com.thinkpower.kotlinspring.demo.model.entity

import jakarta.persistence.*

@Entity
class Author(
    @Id @GeneratedValue var id: Long? = null,
    @Column(unique = true, nullable = false) var login: String,
    var firstname: String,
    var lastname: String,
    var description: String? = null,
)