package net.org.pack.model;

import net.org.pack.dao.Dao;

/**
 * Created by TALEH on 11.10.2016.
 */
public class Model {
    private String userName;
    private String email;
    private StringBuilder text;
    private String adName;
    private String adPass;
    private String picPass;
    private String picName;
    private int superId;
    private int subId;
    private int subsubId;
    private long pictId;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public StringBuilder getText() {
        return text;
    }

    public void setText(StringBuilder text) {
        this.text = text;
    }

    public String getAdName() {
        return adName;
    }

    public void setAdName(String adName) {
        this.adName = adName;
    }

    public String getAdPass() {
        return adPass;
    }

    public void setAdPass(String adPass) {
        this.adPass = adPass;
    }

    public String getPicPass() {
        return picPass;
    }

    public void setPicPass(String picPass) {
        this.picPass = picPass;
    }

    public String getPicName() {
        return picName;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public int getSuperId() {
        return superId;
    }

    public void setSuperId(int superId) {
        this.superId = superId;
    }

    public int getSubId() {
        return subId;
    }

    public void setSubId(int subId) {
        this.subId = subId;
    }

    public int getSubsubId() {
        return subsubId;
    }

    public void setSubsubId(int subsubId) {
        this.subsubId = subsubId;
    }

    public long getPictId() {
        return pictId;
    }

    public void setPictId(long pictId) {
        this.pictId = pictId;
    }

    @Override
    public String toString() {
        return "Model{" +
                "userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", text=" + text +
                ", adName='" + adName + '\'' +
                ", adPass='" + adPass + '\'' +
                ", picPass='" + picPass + '\'' +
                ", picName='" + picName + '\'' +
                ", superId=" + superId +
                ", subId=" + subId +
                ", subsubId=" + subsubId +
                ", pictId=" + pictId +
                '}';
    }
}
