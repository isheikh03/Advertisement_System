/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.advertisement.service;

import com.advertisement.entity.Admin;
import com.advertisement.entity.Division;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface DivisionService {

    List<Division> getAll();

    Division getById(Integer divisionId);

    boolean add(Division division);

    void update(Division division);

    void delete(Integer divisionId);

//    boolean isExists(String adminName, String adminEmail);
}
