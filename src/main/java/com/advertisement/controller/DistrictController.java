/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.advertisement.controller;

import com.advertisement.entity.District;
import com.advertisement.service.DistrictService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

/**
 *
 * @author B8
 */

@Controller
@RequestMapping("/")
public class DistrictController {
    
    @Autowired
    private DistrictService districtService;
    
    
    @RequestMapping(value = "/districtd", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<District>> getAll() {
        List<District> list = districtService.getAll();
        System.out.println("divctrl");
        return new ResponseEntity<List<District>>(list, HttpStatus.OK);
    }

    @RequestMapping(value = "/districtd/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<District> getById(@PathVariable("id") Integer id) {
        District district = districtService.getById(id);
        return new ResponseEntity<District>(district, HttpStatus.OK);
    }

    @RequestMapping(value = "/districtd", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> add(@RequestBody District district, UriComponentsBuilder builder) {
        boolean flag = districtService.add(district);
        if (flag == false) {
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        } else {
            HttpHeaders headers = new HttpHeaders();
            headers.setLocation(builder.path("/district/{id}").buildAndExpand(district.getDistrictId()).toUri());
            return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
        }
    }

    @RequestMapping(value = "/districtd/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<District> update(@PathVariable("id") Integer id, @RequestBody District district) {
        District currentDistrict = districtService.getById(id);
        if (currentDistrict == null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<District>(HttpStatus.NOT_FOUND);
        }
        currentDistrict.setDistrictName(district.getDistrictName());
//        currentDivision.setAdminEmail(admin.getAdminEmail());
//        currentDivision.setAdminPassword(admin.getAdminPassword());

        districtService.update(currentDistrict);
        return new ResponseEntity<District>(currentDistrict, HttpStatus.OK);
    }

    @RequestMapping(value = "/districtd/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> delete(@PathVariable("id") Integer id) {
        districtService.delete(id);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

}
