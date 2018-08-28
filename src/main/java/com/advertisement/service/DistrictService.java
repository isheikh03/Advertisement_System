/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.advertisement.service;

import com.advertisement.entity.District;
import java.util.List;

/**
 *
 * @author B8
 */
public interface DistrictService {
    
    List<District> getAll();

    District getById(Integer districtId);

    boolean add(District district);

    void update(District district);

    void delete(Integer district);
    
}
