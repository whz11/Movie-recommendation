package com.example.program.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.time.LocalDate;

public class Weather {

    @JsonFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;
    private String day;
    private String high;
    private String fengli;
    private String low;
    private String fengxiang;
    private String type;

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalDate getDate() {
        return date;
    }

    public String getDay() {
        return day;
    }

    public String getFengli() {
        return fengli;
    }

    public String getFengxiang() {
        return fengxiang;
    }

    public String getHigh() {
        return high;
    }

    public String getLow() {
        return low;
    }

    public String getType() {
        return type;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public void setFengli(String fengli) {
        this.fengli = fengli;
    }

    public void setFengxiang(String fengxiang) {
        this.fengxiang = fengxiang;
    }

    public void setHigh(String high) {
        this.high = high;
    }

    public void setLow(String low) {
        this.low = low;
    }

    public void setType(String type) {
        this.type = type;
    }

}
