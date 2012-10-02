// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.terram;

import com.terram.Address;
import com.terram.AddressDataOnDemand;
import com.terram.AddressIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AddressIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AddressIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AddressIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: AddressIntegrationTest: @Transactional;
    
    @Autowired
    private AddressDataOnDemand AddressIntegrationTest.dod;
    
    @Test
    public void AddressIntegrationTest.testCountAddresses() {
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", dod.getRandomAddress());
        long count = Address.countAddresses();
        Assert.assertTrue("Counter for 'Address' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AddressIntegrationTest.testFindAddress() {
        Address obj = dod.getRandomAddress();
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Address' failed to provide an identifier", id);
        obj = Address.findAddress(id);
        Assert.assertNotNull("Find method for 'Address' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Address' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void AddressIntegrationTest.testFindAllAddresses() {
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", dod.getRandomAddress());
        long count = Address.countAddresses();
        Assert.assertTrue("Too expensive to perform a find all test for 'Address', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Address> result = Address.findAllAddresses();
        Assert.assertNotNull("Find all method for 'Address' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Address' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AddressIntegrationTest.testFindAddressEntries() {
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", dod.getRandomAddress());
        long count = Address.countAddresses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Address> result = Address.findAddressEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Address' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Address' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AddressIntegrationTest.testFlush() {
        Address obj = dod.getRandomAddress();
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Address' failed to provide an identifier", id);
        obj = Address.findAddress(id);
        Assert.assertNotNull("Find method for 'Address' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyAddress(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Address' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AddressIntegrationTest.testMergeUpdate() {
        Address obj = dod.getRandomAddress();
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Address' failed to provide an identifier", id);
        obj = Address.findAddress(id);
        boolean modified =  dod.modifyAddress(obj);
        Integer currentVersion = obj.getVersion();
        Address merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Address' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AddressIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", dod.getRandomAddress());
        Address obj = dod.getNewTransientAddress(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Address' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Address' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'Address' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void AddressIntegrationTest.testRemove() {
        Address obj = dod.getRandomAddress();
        Assert.assertNotNull("Data on demand for 'Address' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Address' failed to provide an identifier", id);
        obj = Address.findAddress(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Address' with identifier '" + id + "'", Address.findAddress(id));
    }
    
}
