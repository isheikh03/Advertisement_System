package com.advertisement.dao.impl;

import com.advertisement.dao.AdminDao;
import com.advertisement.entity.Admin;
import java.util.List;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

@Repository
@Transactional
public class AdminDaoImpl implements AdminDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @SuppressWarnings("unchecked")
    @Override
    public List<Admin> getAll() {
        String hql = "FROM Admin as a ORDER BY a.adminId";
        return (List<Admin>) hibernateTemplate.find(hql);
    }

    @Override
    public Admin getById(Integer adminId) {
        return hibernateTemplate.get(Admin.class, adminId);
    }

    @Override
    public void add(Admin admin) {
        hibernateTemplate.save(admin);
    }

    @Override
    public void update(Admin admin) {
        Admin a = getById(admin.getAdminId());
        a.setAdminName(admin.getAdminName());
        a.setAdminEmail(admin.getAdminEmail());
        a.setAdminPassword(admin.getAdminPassword());
        hibernateTemplate.update(a);
    }

    @Override
    public void delete(Integer adminId) {
        hibernateTemplate.delete(getById(adminId));
    }

    @SuppressWarnings("unchecked")
    @Override
    public boolean isExists(String adminName, String adminEmail, String adminPassword) {
        String hql = "FROM Admin as a WHERE a.adminName = ? and a.adminEmail = ? and a.adminPassword = ? ";
        List<Admin> admins = (List<Admin>) hibernateTemplate.find(hql, adminName, adminEmail, adminPassword);
        return admins.size() > 0 ? true : false;
    }

}
