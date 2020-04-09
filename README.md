# Movie-recommendation
## 背景
>宅在家中最幸福的事情莫过于看好电影，但是经过大学一个学期，好多高中想看的电影都看完了，所以打算设计一个程序，每日推荐电影


* 开发环境：java jdk8 ，mysql（数据库名program，三个表movie，weather和schedule），idea，Navicat

* 测试环境：postman，idea JUnit

* 技术栈：

         前端：thymeleaf模板，html，css，js

         后端：springboot框架，mysql，mybatis，pagehelper，springboot-mail，EnableScheduling定时任务， RestTemplate调用天气api
         
* 项目部署到服务器上：
        [link](http://47.99.205.75:8081/)

* 项目结构：

         后台：显示历史推送记录和影片库,新增修改定时任务时间功能
         定时任务：获取当日天气
         定时任务：推送静态邮件至用户邮箱

* 项目介绍：

         基于每日天气设计的天气随机算法（滑稽）定时推荐电影至用户邮箱（本项目采用qq邮箱），
         影片源采用之前爬取的豆瓣250名电影排行榜，天气源http://wthrcdn.etouch.cn/weather_mini?city=" ",
         每日推送情况和影片源可在后台，查看端口号8081，默认页面是history可以通过影片库按钮跳转到影片库页面，页面右上角有天气插件。
* 项目运行：
          
         1.首先创建三张表（我放sql文件夹里了），天气数据另外考虑，要手动获取见3.
         
         2.然后修改application.properties里对应的数据库信息，mail部分可以不用改发送人，
         因为还要去获取第三方邮件发送码，有点麻烦，mail.sendMail.addr=1195687131@qq.com可以改成自己qq
         
         3.运行项目，先手动调用text文件夹中Text.class里的test()获取今日天气（因为设定定时是早上6点）登录网页localhost:8081
         
         4.定时任务可以直接在schedule表中修改time字段（采用cron 格式），因为网页中修改要到下下次才能成功
         
         5.天气api地址调用城市是台州，可以在SaticScheduleTask.class/weatherControl方法中找到String apiURl修改
         
         5.目前想那么多，如果有问题联系qq：1195687131


