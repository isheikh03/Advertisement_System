/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.advertisement.service.impl;

import com.advertisement.dao.DistrictDao;
import com.advertisement.entity.District;
import com.advertisement.service.DistrictService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B8
 */
@Service
public class DistrictServiceImpl implements DistrictService {

    @Autowired
    DistrictDao districtDao;

    @Override
    public List<District> getAll() {
        System.out.println("divservice");
        return districtDao.getAll();
    }

    @Override
    public District getById(Integer districtId) {

        return districtDao.getById(districtId);
    }

    @Override
    public synchronized boolean add(District district) {

        if (districtDao.isExists(district.getDistrictName())) {
            return false;
        } else {
            districtDao.add(district);
            return true;
        }
    }

    @Override
    public void update(District district) {

        districtDao.update(district);
    }

    @Override
    public void delete(Integer districtId) {

        districtDao.delete(districtId);
    }

}
