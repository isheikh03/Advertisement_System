package com.advertisement.service.impl;

import com.advertisement.dao.DivisionDao;
import com.advertisement.entity.Division;
import com.advertisement.service.DivisionService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DivisionServiceImpl implements DivisionService {

    @Autowired
    DivisionDao divisionDao;

    @Override
    public List<Division> getAll() {
        System.out.println("divservice");
        return divisionDao.getAll();
    }

    @Override
    public Division getById(Integer divisionId) {
        Division division = divisionDao.getById(divisionId);
        return division;
    }

//    @Override
//    public synchronized boolean isExists(String adminName, String adminEmail) {
//
//        if (adminDao.isExists(adminName, adminEmail)) {
//            return false;
//        } else {
//            return true;
//        }
//    }
//
//    @Override
//    public void add(Admin admin) {
//        adminDao.add(admin);
//    }
    
    @Override
    public synchronized boolean add(Division division) {
        if (divisionDao.isExists(division.getDivisionName())) {
            return false;
        } else {
            divisionDao.add(division);
            return true;
        }
    }
 
    

    @Override
    public void update(Division division) {
        divisionDao.update(division);
    }

    @Override
    public void delete(Integer divisionId) {
        divisionDao.delete(divisionId);
    }

    

}
