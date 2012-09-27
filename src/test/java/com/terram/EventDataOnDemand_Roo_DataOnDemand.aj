// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.terram;

import com.terram.Event;
import com.terram.EventDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect EventDataOnDemand_Roo_DataOnDemand {
    
    declare @type: EventDataOnDemand: @Component;
    
    private Random EventDataOnDemand.rnd = new SecureRandom();
    
    private List<Event> EventDataOnDemand.data;
    
    public Event EventDataOnDemand.getNewTransientEvent(int index) {
        Event obj = new Event();
        return obj;
    }
    
    public Event EventDataOnDemand.getSpecificEvent(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Event obj = data.get(index);
        Long id = obj.getId();
        return Event.findEvent(id);
    }
    
    public Event EventDataOnDemand.getRandomEvent() {
        init();
        Event obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Event.findEvent(id);
    }
    
    public boolean EventDataOnDemand.modifyEvent(Event obj) {
        return false;
    }
    
    public void EventDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Event.findEventEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Event' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Event>();
        for (int i = 0; i < 10; i++) {
            Event obj = getNewTransientEvent(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
