package com.example.program.service.impl;

import com.example.program.dao.DemoMapper;
import com.example.program.model.Entity;
import com.example.program.model.Weather;
import com.example.program.service.MailService;
import com.example.program.util.LotteryUtil;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.thymeleaf.context.IContext;

import java.time.LocalDate;

@RunWith(SpringRunner.class)
@SpringBootTest
class MailServiceImplTest {
    @Autowired
    private MailService mailService;

    @Autowired
    private TemplateEngine templateEngine;

    @Autowired
    private DemoMapper demoMapper;

    @Autowired
    private LotteryUtil lotteryUtil;


    @Test
    void sendTemplateMail() {
        //创建邮件正文
        Context context = new Context();
        context.setVariable("id", "001");
        String emailContent = templateEngine.process("emailTemplate", context);

        mailService.sendHtmlMail("515197890@qq.com", "主题：", emailContent);
    }

    @Test
    public void testHtmlMail() throws Exception {
        String content="<html>\n" +
                "<body>\n" +
                "    <h3>hello world ! 这是一封html邮件!</h3>\n" +
                "</body>\n" +
                "</html>";
        mailService.sendHtmlMail("1195687131@qq.com","test simple mail",content);
    }
    @Test
    public void sendMail(){
        String user="1195687131@qq.com";
        Context context = new Context();
        Weather weather=demoMapper.getWeather(LocalDate.now());
        Entity entity=lotteryUtil.lottery();
        entity.setFlag(1);
        LocalDate date=LocalDate.now();
        entity.setUser(user);
        entity.setDealTime(date);
        demoMapper.updateEntity(entity);
        //demoMapper.saveTime(date,entity.getRank());
        //demoMapper.saveUser(user,entity.getRank());
        context.setVariable("m", entity);
        context.setVariable("time", date);
        context.setVariable("username", "hz");
        context.setVariable("weather", weather);
        String emailContent = templateEngine.process("emailTemplate", context);

        mailService.sendHtmlMail(user, "电影推送", emailContent);
    }
}