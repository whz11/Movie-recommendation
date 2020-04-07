package com.example.program.dao;

import com.example.program.model.Entity;
import com.example.program.model.Schedule;
import com.example.program.model.Weather;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Mapper
@Repository
public interface DemoMapper {

    @Select("SELECT * FROM movie")
    List<Entity> getAll();

    @Select("SELECT * FROM movie WHERE ratingPeopleNum < #{num} AND flag=0")
    List<Entity> getYin(int num);//抽奖算法

    @Select("SELECT * FROM movie WHERE ratingPeopleNum >= #{num} AND flag=0")
    List<Entity> getQin(int num);

    @Update("UPDATE movie SET flag=#{flag},dealTime=#{dealTime},user=#{user} WHERE rank =#{rank}")
    void updateEntity(Entity m);

    @Select("SELECT * FROM movie WHERE rank=#{rank}")
    Entity getMovie(int rank);

    @Update("UPDATE movie SET dealTime=#{dealTime} WHERE rank =#{rank}")
    void saveTime(@Param("dealTime") LocalDate dealTime,@Param("rank") int rank);//坑，多参数要@param；

    @Update("UPDATE movie SET user=#{user} WHERE rank =#{rank}")
    void saveUser(@Param("user")String user,@Param("rank") int rank);

    @Select("SELECT * FROM movie WHERE flag=#{flag}")
    List<Entity> getHistory(int flag);

    @Insert("INSERT INTO weather (date,high,day,fengli,fengxiang,low,type) VALUES(#{date}, #{high}, #{day},#{fengli},#{fengxiang},#{low},#{type})")
    void saveWeather(Weather weather);

    @Select("SELECT * FROM weather WHERE date=#{date}")
    Weather getWeather(LocalDate date);

    @Update("UPDATE schedule SET time=#{time},hour=#{hour},min=#{min},sec=#{sec} WHERE id = 1")
    void updateSchedule(Schedule schedule);

    @Select("SELECT * FROM schedule WHERE id=1")
    Schedule getSchedule();
}
