package com.po;

/**
 * Created by localhost on 17-6-1.
 */
//javabean的第一个原则类为public
public class Users {

    //javabean的第二个原则属性为private
    private String username;
    private String password;

    //javabean的第三个原则无参的构造方法
    public Users(){

    }

    //javabean的第四个原则getter和setter方法
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
