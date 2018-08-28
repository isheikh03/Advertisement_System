package com.advertisement.service;

import com.advertisement.entity.Category;
import java.util.List;

public interface CategoryService {

    List<Category> getAll();

    Category getById(Integer categoryId);

    boolean add(Category category);

    void update(Category category);

    void delete(Integer categoryId);

//    boolean isExists(String adminName, String adminEmail);

}
