package com.example.program.util;

import com.example.program.dao.DemoMapper;
import com.example.program.model.Entity;
import com.example.program.model.Weather;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.relational.core.sql.In;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @author whz
 * 天气随机算法
 */
public class LotteryUtil {

    @Autowired
    private DemoMapper demoMapper;
    public final int averagePeopleNum=400923;


    public Entity lottery(){

        int i=0;
        int flag=weatherPoint();
        List<Entity> list=new ArrayList<>();
        Weather weather=demoMapper.getWeather(LocalDate.now());
        if("阴".equals(weather.getType())){
            list=demoMapper.getYin(averagePeopleNum);
        }else {
            list=demoMapper.getQin(averagePeopleNum);

        }
        for (Entity entity : list) {
            i++;
            if (i == flag) {
                return entity;
            }
        }
        return list.get(0);
    }
    public int weatherPoint(){
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

        return (hInt+lInt)/2;
    }
}
