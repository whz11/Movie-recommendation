package com.example.program.service;


public interface MailService {

    public void sendHtmlMail(String to, String subject, String content) ;
    public void sendMail();
    }
