package com.example.program.config;

import com.example.program.dao.DemoMapper;
import com.example.program.model.Entity;
import com.example.program.model.Weather;
import com.example.program.service.MailService;
import com.example.program.util.LotteryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.client.RestTemplate;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Configuration
@EnableScheduling
public class SaticScheduleTask {
    @Autowired
    private MailService mailService;

    @Autowired
    private DemoMapper demoMapper;

    @Autowired
    private TemplateEngine templateEngine;

    @Autowired
    private RestTemplate restTemplate;



    @Scheduled(cron = "0 00 8 * * ?")
    private void configureTasks() {
        LotteryUtil lotteryUtil=new LotteryUtil();
        String user="1195687131@qq.com";
        Context context = new Context();
        Entity entity=lotteryUtil.lottery();
        entity.setFlag(1);
        LocalDate date=LocalDate.now();
        demoMapper.saveTime(date,entity.getRank());
        demoMapper.saveUser(user,entity.getRank());
        Weather weather=demoMapper.getWeather(date);
        context.setVariable("m", entity);
        context.setVariable("time", date);
        context.setVariable("username", "hz");
        context.setVariable("weather", weather);
        String emailContent = templateEngine.process("emailTemplate", context);

        mailService.sendHtmlMail(user, "电影推送", emailContent);
    }


    @Scheduled(cron = "0 00 6 * * ?")
    public  void WeaherControl() {
        String[] weeks = {"星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期天", "星期一"};
        String apiURL = "http://wthrcdn.etouch.cn/weather_mini?city=" + "台州";
        ResponseEntity<String> responseEntity = restTemplate.getForEntity(apiURL, String.class);
        String str = responseEntity.toString();
        LocalDateTime now = LocalDateTime.now();
        int k = now.getDayOfWeek().getValue() - 1;
        int f1 = str.indexOf(weeks[k]);
        int f2 = str.indexOf(weeks[k + 1]);
        String today = str.substring(f1, f2);
        int f3 = today.indexOf("},{");
        today = today.substring(5, f3);
        char[] arr = today.toCharArray();
        char[] arr2 = new char[100];
        int i = 0;
        for (char a : arr) {
            if (a != '"') {
                arr2[i++] = a;
            }
        }
        String today1 = new String(arr2);
        String[] s = today.split(",");
        String[] w = new String[30];

        for (i = 0; i < s.length; i++) {
            String[] w1 = s[i].split(":");
            w[i] = w1[w1.length - 1];
        }


        Weather weather = new Weather();
        weather.setDate(LocalDate.now());
        weather.setDay(weeks[k]);
        weather.setHigh(w[0]);
        weather.setFengli(w[1]);
        weather.setLow(w[2]);
        weather.setFengxiang(w[3]);
        weather.setType(w[4]);
        demoMapper.saveWeather(weather);
    }
}