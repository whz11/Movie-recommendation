package com.example.program.service.impl;

import com.example.program.dao.DemoMapper;
import com.example.program.model.Entity;
import com.example.program.model.Weather;
import com.example.program.service.MailService;
import com.example.program.util.LotteryUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.time.LocalDate;

@Service
public class MailServiceImpl implements MailService {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private DemoMapper demoMapper;

    @Autowired
    private TemplateEngine templateEngine;

    @Autowired
    private JavaMailSender mailSender;

    @Autowired
    private LotteryUtil lotteryUtil;

    @Value("${mail.fromMail.addr}")
    private String from;
    @Value("${mail.sendMail.addr}")
    private String user;

    @Override
    public void sendHtmlMail(String to, String subject, String content) {
        MimeMessage message = mailSender.createMimeMessage();

        try {
            //true表示需要创建一个multipart message
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            helper.setFrom("1195687131@qq.com");
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setText(content, true);

            mailSender.send(message);
            logger.info("html邮件发送成功");
        } catch (MessagingException e) {
            logger.error("发送html邮件时发生异常！", e);
        }
    }
    @Override
    public void sendMail(){
        LocalDate date=LocalDate.now();
        Weather weather=demoMapper.getWeather(date);
        Context context = new Context();
        Entity entity=lotteryUtil.lottery();
        entity.setFlag(1);
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

        sendHtmlMail(user, "电影推送", emailContent);
    }
}
