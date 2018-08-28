package com.advertisement.service.impl;

import com.advertisement.dao.CategoryDao;
import com.advertisement.entity.Category;
import com.advertisement.service.CategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryDao categoryDao;

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public Category getById(Integer categoryId) {
        Category category = categoryDao.getById(categoryId);
        return category;
    }
    
    @Override
    public synchronized boolean add(Category category) {
        if (categoryDao.isExists(category.getCategoryName())) {
            return false;
        } else {
            categoryDao.add(category);
            return true;
        }
    }
 
    

    @Override
    public void update(Category category) {
        categoryDao.update(category);
    }

    @Override
    public void delete(Integer categoryId) {
        categoryDao.delete(categoryId);
    }

    

}
