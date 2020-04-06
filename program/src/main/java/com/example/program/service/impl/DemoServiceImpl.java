package com.example.program.service.impl;

import com.example.program.dao.DemoMapper;
import com.example.program.model.Entity;
import com.example.program.service.DemoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Iterator;
import java.util.List;

@Service
public class DemoServiceImpl implements DemoService {

    @Autowired
    private DemoMapper demoMapper;

    @Override
    public PageInfo getList(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Entity> list = demoMapper.getAll();
        return new PageInfo<>(list);
    }

    @Override
    public Entity getOne(LocalDate localDate) {
        List<Entity> list = demoMapper.getHistory(1);
        Iterator<Entity> iterator = list.iterator();
        while (iterator.hasNext()) {
            Entity entity = iterator.next();
            LocalDate localDate1 = entity.getDealTime();
            if (localDate1.equals(localDate)) {
                return entity;
            }
        }
        return null;

    }
    @Override
    public List getHistory(){
        List<Entity> list= demoMapper.getHistory(1);
        Iterator<Entity> iterator=list.iterator();
        int i=1;
        while (iterator.hasNext()){
            Entity entity=iterator.next();
            entity.setId(i++);
        }
        return list;
    }
}
