package com.example.program.config;

import com.example.program.dao.DemoMapper;
import com.example.program.model.Entity;
import com.example.program.model.Weather;
import com.example.program.service.MailService;
import com.example.program.util.LotteryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.Trigger;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;
import org.springframework.scheduling.support.CronTrigger;
import org.springframework.web.client.RestTemplate;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.springframework.scheduling.TriggerContext;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Configuration
@EnableScheduling
public class SaticScheduleTask implements SchedulingConfigurer {
    @Autowired
    private MailService mailService;

    @Autowired
    private DemoMapper demoMapper;

    @Autowired
    private RestTemplate restTemplate;

    public static String cron;


    /*
    public String schedule =demoMapper.getSchedule().getTime();
    public final String time=a();


    public final String a(){
        String s=demoMapper.getSchedule().getTime();
        if(s==null) {
            return "0 00 06 * * ?";
        }else {
            return s;
        }
    }
 */
  //  @Scheduled(cron ="0 00 08 * * ?" )
    @Override
    public void configureTasks(ScheduledTaskRegistrar taskRegistrar) {
        cron=demoMapper.getSchedule().getTime();
        Runnable task = new Runnable() {
            @Override
            public void run() {
                //任务逻辑代码部分.
                mailService.sendMail();
            }
        };
        Trigger trigger = new Trigger() {
            @Override
            public Date nextExecutionTime(TriggerContext triggerContext) {
                //任务触发，可修改任务的执行周期.
                //每一次任务触发，都会执行这里的方法一次，重新获取下一次的执行时间
                cron = demoMapper.getSchedule().getTime();
                CronTrigger trigger = new CronTrigger(cron);
                return trigger.nextExecutionTime(triggerContext);
            }
        };
        taskRegistrar.addTriggerTask(task, trigger);
    }


    @Scheduled(cron = "0 00 6 * * ?")
    public  void WeaherControl() {
        String[] weeks = {"星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期天", "星期一"};
        String apiURL="http://wthrcdn.etouch.cn/weather_mini?city=" + "台州";
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