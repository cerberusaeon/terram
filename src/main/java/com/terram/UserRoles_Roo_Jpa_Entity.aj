// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.terram;

import com.terram.UserRoles;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect UserRoles_Roo_Jpa_Entity {
    
    declare @type: UserRoles: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long UserRoles.id;
    
    @Version
    @Column(name = "version")
    private Integer UserRoles.version;
    
    public Long UserRoles.getId() {
        return this.id;
    }
    
    public void UserRoles.setId(Long id) {
        this.id = id;
    }
    
    public Integer UserRoles.getVersion() {
        return this.version;
    }
    
    public void UserRoles.setVersion(Integer version) {
        this.version = version;
    }
    
}
