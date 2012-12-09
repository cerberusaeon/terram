// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.terram;

import com.terram.UserRoles;
import com.terram.UserRolesDataOnDemand;
import com.terram.UserRolesIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserRolesIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UserRolesIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UserRolesIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: UserRolesIntegrationTest: @Transactional;
    
    @Autowired
    private UserRolesDataOnDemand UserRolesIntegrationTest.dod;
    
    @Test
    public void UserRolesIntegrationTest.testCountUserRoleses() {
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", dod.getRandomUserRoles());
        long count = UserRoles.countUserRoleses();
        Assert.assertTrue("Counter for 'UserRoles' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UserRolesIntegrationTest.testFindUserRoles() {
        UserRoles obj = dod.getRandomUserRoles();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to provide an identifier", id);
        obj = UserRoles.findUserRoles(id);
        Assert.assertNotNull("Find method for 'UserRoles' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'UserRoles' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void UserRolesIntegrationTest.testFindAllUserRoleses() {
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", dod.getRandomUserRoles());
        long count = UserRoles.countUserRoleses();
        Assert.assertTrue("Too expensive to perform a find all test for 'UserRoles', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<UserRoles> result = UserRoles.findAllUserRoleses();
        Assert.assertNotNull("Find all method for 'UserRoles' illegally returned null", result);
        Assert.assertTrue("Find all method for 'UserRoles' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UserRolesIntegrationTest.testFindUserRolesEntries() {
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", dod.getRandomUserRoles());
        long count = UserRoles.countUserRoleses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<UserRoles> result = UserRoles.findUserRolesEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'UserRoles' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'UserRoles' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UserRolesIntegrationTest.testFlush() {
        UserRoles obj = dod.getRandomUserRoles();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to provide an identifier", id);
        obj = UserRoles.findUserRoles(id);
        Assert.assertNotNull("Find method for 'UserRoles' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUserRoles(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'UserRoles' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserRolesIntegrationTest.testMergeUpdate() {
        UserRoles obj = dod.getRandomUserRoles();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to provide an identifier", id);
        obj = UserRoles.findUserRoles(id);
        boolean modified =  dod.modifyUserRoles(obj);
        Integer currentVersion = obj.getVersion();
        UserRoles merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'UserRoles' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UserRolesIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", dod.getRandomUserRoles());
        UserRoles obj = dod.getNewTransientUserRoles(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'UserRoles' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'UserRoles' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void UserRolesIntegrationTest.testRemove() {
        UserRoles obj = dod.getRandomUserRoles();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UserRoles' failed to provide an identifier", id);
        obj = UserRoles.findUserRoles(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'UserRoles' with identifier '" + id + "'", UserRoles.findUserRoles(id));
    }
    
}