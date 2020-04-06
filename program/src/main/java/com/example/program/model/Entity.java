package com.example.program.model;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.time.LocalDate;
import java.util.Date;

public class Entity {

    private int id;
    private int rank;
    private String title;
    private String url;
    private String ratingNum;   //maybe有问题
    private int ratingPeopleNum;
    private String quote;
    private int flag;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate dealTime;
    private String user;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setDealTime(LocalDate dealTime) {
        this.dealTime = dealTime;
    }

    public LocalDate getDealTime() {
        return dealTime;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public int getRatingPeopleNum() {
        return ratingPeopleNum;
    }

    public void setRatingPeopleNum(int ratingPeopleNum) {
        this.ratingPeopleNum = ratingPeopleNum;
    }

    public String getQuote() {
        return quote;
    }

    public void setQuote(String quote) {
        this.quote = quote;
    }

    public String getRatingNum() {
        return ratingNum;
    }

    public void setRatingNum(String ratingNum) {
        this.ratingNum = ratingNum;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
