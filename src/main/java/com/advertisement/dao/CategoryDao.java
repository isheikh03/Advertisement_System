package com.advertisement.dao;

import com.advertisement.entity.Category;
import java.util.List;

public interface CategoryDao {

    List<Category> getAll();

    Category getById(Integer categoryId);

    void add(Category category);

    void update(Category category);

    void delete(Integer categoryId);

    boolean isExists(String categoryName);
}
