package com.advertisement.controller;

import com.advertisement.entity.Division;
import com.advertisement.service.DivisionService;
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

@Controller
@RequestMapping("/")
public class DivisionController {

    @Autowired
    private DivisionService divisionService;

    @RequestMapping(value = "/divisionx", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<Division>> getAll() {
        List<Division> list = divisionService.getAll();
        System.out.println("divctrl");
        return new ResponseEntity<List<Division>>(list, HttpStatus.OK);
    }

    @RequestMapping(value = "/divisionx/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Division> getById(@PathVariable("id") Integer id) {
        Division division = divisionService.getById(id);
        return new ResponseEntity<Division>(division, HttpStatus.OK);
    }

    @RequestMapping(value = "/divisionx", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> add(@RequestBody Division division, UriComponentsBuilder builder) {
        boolean flag = divisionService.add(division);
        if (flag == false) {
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        } else {
            HttpHeaders headers = new HttpHeaders();
            headers.setLocation(builder.path("/division/{id}").buildAndExpand(division.getDivisionId()).toUri());
            return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
        }
    }

    @RequestMapping(value = "/divisionx/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Division> update(@PathVariable("id") Integer id, @RequestBody Division division) {
        Division currentDivision = divisionService.getById(id);
        if (currentDivision == null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<Division>(HttpStatus.NOT_FOUND);
        }
        currentDivision.setDivisionName(division.getDivisionName());
//        currentDivision.setAdminEmail(admin.getAdminEmail());
//        currentDivision.setAdminPassword(admin.getAdminPassword());

        divisionService.update(currentDivision);
        return new ResponseEntity<Division>(currentDivision, HttpStatus.OK);
    }

    @RequestMapping(value = "/divisionx/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> delete(@PathVariable("id") Integer id) {
        divisionService.delete(id);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

}
