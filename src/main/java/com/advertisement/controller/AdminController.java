package com.advertisement.controller;

import com.advertisement.entity.Admin;
import com.advertisement.service.AdminService;
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
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/home")
    public String home() {
        return "admin";
    }
    
     @RequestMapping("/admin")
    public String admin() {
        return "admin/my_custome-templete";
    }

    @RequestMapping(value = "/admina", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<Admin>> getAll() {
        List<Admin> list = adminService.getAll();
        return new ResponseEntity<List<Admin>>(list, HttpStatus.OK);
    }

    @RequestMapping(value = "/admina/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Admin> getById(@PathVariable("id") Integer id) {
        Admin admin = adminService.getById(id);
        return new ResponseEntity<Admin>(admin, HttpStatus.OK);
    }

    @RequestMapping(value = "/admina", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> add(@RequestBody Admin admin, UriComponentsBuilder builder) {
        boolean flag = adminService.add(admin);
        if (flag == false) {
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        } else {
            HttpHeaders headers = new HttpHeaders();
            headers.setLocation(builder.path("/admina/{id}").buildAndExpand(admin.getAdminId()).toUri());
            return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
        }
    }

    @RequestMapping(value = "/admina/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Admin> update(@PathVariable("id") Integer id, @RequestBody Admin admin) {
        Admin currentAdmin = adminService.getById(id);
        if (currentAdmin == null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<Admin>(HttpStatus.NOT_FOUND);
        }
        currentAdmin.setAdminName(admin.getAdminName());
        currentAdmin.setAdminEmail(admin.getAdminEmail());
        currentAdmin.setAdminPassword(admin.getAdminPassword());

        adminService.update(currentAdmin);
        return new ResponseEntity<Admin>(currentAdmin, HttpStatus.OK);
    }

    @RequestMapping(value = "/admina/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> delete(@PathVariable("id") Integer id) {
        adminService.delete(id);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

}
