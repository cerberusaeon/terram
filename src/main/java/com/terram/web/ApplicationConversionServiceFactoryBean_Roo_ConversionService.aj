// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.terram.web;

import com.terram.Calendar;
import com.terram.Category;
import com.terram.Code;
import com.terram.CodeCategory;
import com.terram.Event;
import com.terram.SessionToken;
import com.terram.Users;
import com.terram.UsersCalendar;
import com.terram.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Calendar, String> ApplicationConversionServiceFactoryBean.getCalendarToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.Calendar, java.lang.String>() {
            public String convert(Calendar calendar) {
                return new StringBuilder().append(calendar.getId()).toString();
            }
        };
    }
    
    public Converter<Long, Calendar> ApplicationConversionServiceFactoryBean.getIdToCalendarConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.Calendar>() {
            public com.terram.Calendar convert(java.lang.Long id) {
                return Calendar.findCalendar(id);
            }
        };
    }
    
    public Converter<String, Calendar> ApplicationConversionServiceFactoryBean.getStringToCalendarConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.Calendar>() {
            public com.terram.Calendar convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Calendar.class);
            }
        };
    }
    
    public Converter<Category, String> ApplicationConversionServiceFactoryBean.getCategoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.Category, java.lang.String>() {
            public String convert(Category category) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Category> ApplicationConversionServiceFactoryBean.getIdToCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.Category>() {
            public com.terram.Category convert(java.lang.Long id) {
                return Category.findCategory(id);
            }
        };
    }
    
    public Converter<String, Category> ApplicationConversionServiceFactoryBean.getStringToCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.Category>() {
            public com.terram.Category convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Category.class);
            }
        };
    }
    
    public Converter<Code, String> ApplicationConversionServiceFactoryBean.getCodeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.Code, java.lang.String>() {
            public String convert(Code code) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Code> ApplicationConversionServiceFactoryBean.getIdToCodeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.Code>() {
            public com.terram.Code convert(java.lang.Long id) {
                return Code.findCode(id);
            }
        };
    }
    
    public Converter<String, Code> ApplicationConversionServiceFactoryBean.getStringToCodeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.Code>() {
            public com.terram.Code convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Code.class);
            }
        };
    }
    
    public Converter<CodeCategory, String> ApplicationConversionServiceFactoryBean.getCodeCategoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.CodeCategory, java.lang.String>() {
            public String convert(CodeCategory codeCategory) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, CodeCategory> ApplicationConversionServiceFactoryBean.getIdToCodeCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.CodeCategory>() {
            public com.terram.CodeCategory convert(java.lang.Long id) {
                return CodeCategory.findCodeCategory(id);
            }
        };
    }
    
    public Converter<String, CodeCategory> ApplicationConversionServiceFactoryBean.getStringToCodeCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.CodeCategory>() {
            public com.terram.CodeCategory convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), CodeCategory.class);
            }
        };
    }
    
    public Converter<Event, String> ApplicationConversionServiceFactoryBean.getEventToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.Event, java.lang.String>() {
            public String convert(Event event) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Event> ApplicationConversionServiceFactoryBean.getIdToEventConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.Event>() {
            public com.terram.Event convert(java.lang.Long id) {
                return Event.findEvent(id);
            }
        };
    }
    
    public Converter<String, Event> ApplicationConversionServiceFactoryBean.getStringToEventConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.Event>() {
            public com.terram.Event convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Event.class);
            }
        };
    }
    
    public Converter<SessionToken, String> ApplicationConversionServiceFactoryBean.getSessionTokenToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.SessionToken, java.lang.String>() {
            public String convert(SessionToken sessionToken) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, SessionToken> ApplicationConversionServiceFactoryBean.getIdToSessionTokenConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.SessionToken>() {
            public com.terram.SessionToken convert(java.lang.Long id) {
                return SessionToken.findSessionToken(id);
            }
        };
    }
    
    public Converter<String, SessionToken> ApplicationConversionServiceFactoryBean.getStringToSessionTokenConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.SessionToken>() {
            public com.terram.SessionToken convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), SessionToken.class);
            }
        };
    }
    
    public Converter<Users, String> ApplicationConversionServiceFactoryBean.getUsersToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.Users, java.lang.String>() {
            public String convert(Users users) {
                return new StringBuilder().append(users.getId()).append(' ').append(users.getUsername()).append(' ').append(users.getPassword()).append(' ').append(users.getLastRevised()).toString();
            }
        };
    }
    
    public Converter<Long, Users> ApplicationConversionServiceFactoryBean.getIdToUsersConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.Users>() {
            public com.terram.Users convert(java.lang.Long id) {
                return Users.findUsers(id);
            }
        };
    }
    
    public Converter<String, Users> ApplicationConversionServiceFactoryBean.getStringToUsersConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.Users>() {
            public com.terram.Users convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Users.class);
            }
        };
    }
    
    public Converter<UsersCalendar, String> ApplicationConversionServiceFactoryBean.getUsersCalendarToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.terram.UsersCalendar, java.lang.String>() {
            public String convert(UsersCalendar usersCalendar) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, UsersCalendar> ApplicationConversionServiceFactoryBean.getIdToUsersCalendarConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.terram.UsersCalendar>() {
            public com.terram.UsersCalendar convert(java.lang.Long id) {
                return UsersCalendar.findUsersCalendar(id);
            }
        };
    }
    
    public Converter<String, UsersCalendar> ApplicationConversionServiceFactoryBean.getStringToUsersCalendarConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.terram.UsersCalendar>() {
            public com.terram.UsersCalendar convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), UsersCalendar.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCalendarToStringConverter());
        registry.addConverter(getIdToCalendarConverter());
        registry.addConverter(getStringToCalendarConverter());
        registry.addConverter(getCategoryToStringConverter());
        registry.addConverter(getIdToCategoryConverter());
        registry.addConverter(getStringToCategoryConverter());
        registry.addConverter(getCodeToStringConverter());
        registry.addConverter(getIdToCodeConverter());
        registry.addConverter(getStringToCodeConverter());
        registry.addConverter(getCodeCategoryToStringConverter());
        registry.addConverter(getIdToCodeCategoryConverter());
        registry.addConverter(getStringToCodeCategoryConverter());
        registry.addConverter(getEventToStringConverter());
        registry.addConverter(getIdToEventConverter());
        registry.addConverter(getStringToEventConverter());
        registry.addConverter(getSessionTokenToStringConverter());
        registry.addConverter(getIdToSessionTokenConverter());
        registry.addConverter(getStringToSessionTokenConverter());
        registry.addConverter(getUsersToStringConverter());
        registry.addConverter(getIdToUsersConverter());
        registry.addConverter(getStringToUsersConverter());
        registry.addConverter(getUsersCalendarToStringConverter());
        registry.addConverter(getIdToUsersCalendarConverter());
        registry.addConverter(getStringToUsersCalendarConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
