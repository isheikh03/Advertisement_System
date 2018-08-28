/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.advertisement.dao;

import com.advertisement.entity.District;
import java.util.List;

/**
 *
 * @author B8
 */
public interface DistrictDao {
    
    List<District> getAll();

    District getById(Integer districtId);

    void add(District district);

    void update(District district);

    void delete(Integer districtId);

    boolean isExists(String districtName);
    
}
