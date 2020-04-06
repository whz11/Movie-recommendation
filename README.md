# Movie-recommendation
## 背景
>宅在家中最幸福的事情莫过于看好电影，但是经过大学一个学期，好多高中想看的电影都看完了，所以打算设计一个程序，每日推荐电影


* 开发环境：java jdk8 ，mysql（数据库名program，两个表movie和weather），idea，Navicat

* 测试环境：postman，idea JUnit

* 技术栈：

         前端：thymeleaf模板，html，css，js

         后端：springboot框架，mysql，mybatis，pagehelper，springboot-mail，EnableScheduling定时任务， RestTemplate调用天气api

* 项目结构：
             后台：显示历史推送记录和影片库    
             定时任务：推送静态邮件至用户邮箱

* 项目介绍：

            基于每日天气设计的天气随机算法（滑稽）定时推荐电影至用户邮箱（本项目采用qq邮箱），影片源采用之前爬取的豆瓣250名电影排行榜，天气源http://wthrcdn.etouch.cn/weather_mini?city=" ",每日推送情况和影片源可在后台，查看端口号8081
