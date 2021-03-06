package com.terram;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findUsersesByIdEquals", "findUsersesByUsernameEquals" })
public class Users {

    private Integer userId;

    private String username;

    private String password;

    private Boolean enabled;

    
}
