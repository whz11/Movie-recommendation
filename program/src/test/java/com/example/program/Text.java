package com.example.program;

import com.alibaba.fastjson.JSONObject;
import com.example.program.dao.DemoMapper;
import com.example.program.model.Entity;
import com.example.program.model.Weather;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.client.RestTemplate;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Text {

    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private  DemoMapper demoMapper;
@Test
    public  void text() {
        String[] weeks={"星期一","星期二","星期三","星期四","星期五","星期六","星期天","星期一"};
        String apiURL = "http://wthrcdn.etouch.cn/weather_mini?city=" + "台州";
        ResponseEntity<String> responseEntity = restTemplate.getForEntity(apiURL, String.class);
        String str= responseEntity.toString();
        LocalDateTime now=LocalDateTime.now();
        int k=now.getDayOfWeek().getValue()-1;
        int f1=str.indexOf(weeks[k]);
        int f2=str.indexOf(weeks[k+1]);
        String today=str.substring(f1,f2);
        int f3=today.indexOf("},{");
        today=today.substring(5, f3);
        char[] arr=today.toCharArray();
        char[] arr2=new char[100];
        int i=0;
        for(char a:arr){
            if(a!='"'){
                arr2[i++]=a;
            }
        }
        String today1=new String(arr2);
       /* int high=today.indexOf("high:");
        int fengli=today.indexOf(",fengli:");
        int low=today.indexOf(",low:");
        int fengxiang=today.indexOf("");*/
        String[] s=today.split(",");
        String[] w=new String[30];
        for(i=0;i<s.length;i++){
           String[]w1=s[i].split(":");
           w[i]=w1[w1.length-1];
        }
        Weather weather=new Weather();
        weather.setDate(LocalDate.now());
        weather.setDay(weeks[k]);
        weather.setHigh(w[0]);
        weather.setFengli(w[1]);
        weather.setLow(w[2]);
        weather.setFengxiang(w[3]);
        weather.setType(w[4]);
        demoMapper.saveWeather(weather);

        System.out.println("cg");
    }
    @Test
    public void sum(){
        List<Entity> list=demoMapper.getAll();
        Iterator<Entity> iterator=list.iterator();
        double sum=0;
        while (iterator.hasNext()){
            Entity entity=iterator.next();
            sum+=entity.getRatingPeopleNum()/250.0;
        }
        System.out.println(sum);
    }
    @Test
    public void weather(){
    Weather weather=demoMapper.getWeather(LocalDate.now());
    String high=weather.getHigh();
    String low=weather.getLow();
    StringBuilder h= new StringBuilder();
    StringBuilder l= new StringBuilder();
    int hInt;
    int lInt;
    for(int i=0;i<high.length();i++) {
        if (high.charAt(i) >= 48 && high.charAt(i) <= 57) {
            h.append(high.charAt(i));
        }
    }
    for(int i=0;i<low.length();i++){
        if(low.charAt(i)>=48&&low.charAt(i)<=57){
            l.append(low.charAt(i));
        }
    }
    hInt=Integer.parseInt(h.toString());
    lInt=Integer.parseInt(l.toString());
        System.out.println(weather.getHigh()+weather.getLow()+weather.getFengli()+hInt);
    }

}
