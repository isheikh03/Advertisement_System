/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.advertisement.dao.impl;

import com.advertisement.dao.DistrictDao;
import com.advertisement.entity.District;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author B8
 */
@Repository
@Transactional
public class DistrictDaoImpl implements DistrictDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @SuppressWarnings("unchecked")
    @Override
    public List<District> getAll() {
        String hql = "FROM District as a ORDER BY a.districtId";
        System.out.println("divdao");
        return (List<District>) hibernateTemplate.find(hql);
    }

    @Override
    public District getById(Integer districtId) {
        return hibernateTemplate.get(District.class, districtId);
    }

    @Override
    public void add(District district) {
        hibernateTemplate.save(district);
    }

    @Override
    public void update(District district) {
        District a = getById(district.getDistrictId());
        a.setDistrictName(district.getDistrictName());
        hibernateTemplate.update(a);
    }

    @Override
    public void delete(Integer districtId) {
        hibernateTemplate.delete(getById(districtId));
    }

    @SuppressWarnings("unchecked")
    @Override
    public boolean isExists(String districtName) {
        String hql = "FROM District as a WHERE a.districtName = ?";
        List<District> districts = (List<District>) hibernateTemplate.find(hql, districtName);
        return districts.size() > 0 ? true : false;
    }

}
