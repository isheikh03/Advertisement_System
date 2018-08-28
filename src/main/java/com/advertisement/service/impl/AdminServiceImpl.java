package com.advertisement.service.impl;

import com.advertisement.dao.AdminDao;
import com.advertisement.entity.Admin;
import com.advertisement.service.AdminService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;

    @Override
    public List<Admin> getAll() {
        return adminDao.getAll();
    }

    @Override
    public Admin getById(Integer adminId) {
        Admin admin = adminDao.getById(adminId);
        return admin;
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
    public synchronized boolean add(Admin admin) {
        if (adminDao.isExists(admin.getAdminName(), admin.getAdminEmail(),admin.getAdminPassword())) {
            return false;
        } else {
            adminDao.add(admin);
            return true;
        }
    }
 
    

    @Override
    public void update(Admin admin) {
        adminDao.update(admin);
    }

    @Override
    public void delete(Integer adminId) {
        adminDao.delete(adminId);
    }

    

}
