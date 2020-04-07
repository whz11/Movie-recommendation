package com.example.program.service;

import com.example.program.model.Entity;
import com.example.program.model.Schedule;
import com.github.pagehelper.PageInfo;

import java.time.LocalDate;
import java.util.List;

public interface DemoService {

    public PageInfo getList(int pageNum,int pageSize);
    public Entity getOne(LocalDate localDate);
    public List getHistory();
    public void updateTime(Schedule schedule);
    public Schedule getSchedule();
    }
