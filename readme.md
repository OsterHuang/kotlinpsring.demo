# Kotlin Spring Boot Demo文件

主要參考官網文件 https://spring.io/guides/tutorials/spring-boot-kotlin

### 另工具產生的官方文件可參考 [HELP.md](./HELP.md)

### 進入此專案前須先有
Spring認識，此文非Spring教學，目的為讓Java工程轉為使用kotlin
* Spring Boot
* Spring Web & MVC
* Spring component IOC
  * 常見controller, service, repository, entity
* JPA

其他
* kotlin
* gradle

# 此專案包含如下主題
* 建立專案
  * gradle
  * spring-boot
  * spring-web
  * spring-jpa
  * postgresSQL driver
* 與postgresSQL資料庫互動
  * 啟動db docker [dbinit/readme.md](dbinit/readme.md)
  * 建立範例資料表格與資料
  * 產生對應的entity與repository
  * 對應controller與輸出時PO轉Vo
> mustache還是建議使用前後端分隔框架
* 使用mustache template框架
  * 使用controller advice建立Layout框架
  * layout css建置
  
* 使用前後分隔框架
  * restful API
  * 前端

未來
* Spring Security
  * 登入
  * 功能權限
