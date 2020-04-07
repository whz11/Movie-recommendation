package com.example.program.model;

public class Schedule {

    private String hour;
    private String min;
    private String sec;
    private String time;

    public void setTime(String time) {
        this.time = time;
    }

    public String getTime() {
        return time;
    }

    public String getHour() {
        return hour;
    }

    public String getMin() {
        return min;
    }

    public String getSec() {
        return sec;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public void setMin(String min) {
        this.min = min;
    }

    public void setSec(String sec) {
        this.sec = sec;
    }
}
