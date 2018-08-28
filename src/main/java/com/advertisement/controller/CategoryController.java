package com.advertisement.controller;

import com.advertisement.entity.Category;
import com.advertisement.service.CategoryService;
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
public class CategoryController {

    @Autowired
    private CategoryService categoryService;
// Commented By Maher Vi
//    @RequestMapping("/home")
//    public String home() {
//        return "admin";
//    }
//    
//     @RequestMapping("/admin")
//    public String admin() {
//        return "admin/my_custome-templete";
//    }

    @RequestMapping(value = "/categoryc", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<Category>> getAll() {
        List<Category> list = categoryService.getAll();
        return new ResponseEntity<List<Category>>(list, HttpStatus.OK);
    }

    @RequestMapping(value = "/categoryc/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Category> getById(@PathVariable("id") Integer id) {
        Category category = categoryService.getById(id);
        return new ResponseEntity<Category>(category, HttpStatus.OK);
    }

    @RequestMapping(value = "/categoryc", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> add(@RequestBody Category category, UriComponentsBuilder builder) {
        boolean flag = categoryService.add(category);
        if (flag == false) {
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        } else {
            HttpHeaders headers = new HttpHeaders();
            headers.setLocation(builder.path("/categoryc/{id}").buildAndExpand(category.getCategoryId()).toUri());
            return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
        }
    }

    @RequestMapping(value = "/categoryc/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Category> update(@PathVariable("id") Integer id, @RequestBody Category category) {
        Category currentCategory = categoryService.getById(id);
        if (currentCategory == null) {
            System.out.println("User with id " + id + " not found");
            return new ResponseEntity<Category>(HttpStatus.NOT_FOUND);
        }
        currentCategory.setCategoryName(category.getCategoryName());
//        currentAdmin.setAdminEmail(admin.getAdminEmail());
//        currentAdmin.setAdminPassword(admin.getAdminPassword());

        categoryService.update(currentCategory);
        return new ResponseEntity<Category>(currentCategory, HttpStatus.OK);
    }

    @RequestMapping(value = "/categoryc/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> delete(@PathVariable("id") Integer id) {
        categoryService.delete(id);
        return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
    }

}
