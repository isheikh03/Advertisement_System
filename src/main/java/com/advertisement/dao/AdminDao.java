package com.advertisement.dao;

import com.advertisement.entity.Admin;
import java.util.List;

public interface AdminDao {

    List<Admin> getAll();

    Admin getById(Integer adminId);

    void add(Admin admin);

    void update(Admin admin);

    void delete(Integer adminId);

    boolean isExists(String adminName, String adminEmail, String adminPassword);
}
