package com.dao;

import com.po.Users;

/**
 * Created by localhost on 17-6-2.
 */

//用户的业务逻辑类
public class UsersDAO {

    //用户登录方法
    public boolean usersLogin(Users u){
        if("admin".equals(u.getUsername()) && "admin".equals(u.getPassword()) ){
            return true;
        }
        else {
            return false;
        }
    }
}
