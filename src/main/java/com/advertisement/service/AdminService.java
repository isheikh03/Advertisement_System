package com.advertisement.service;

import com.advertisement.entity.Admin;
import java.util.List;

public interface AdminService {

    List<Admin> getAll();

    Admin getById(Integer adminId);

    boolean add(Admin admin);

    void update(Admin admin);

    void delete(Integer adminId);

//    boolean isExists(String adminName, String adminEmail);

}
