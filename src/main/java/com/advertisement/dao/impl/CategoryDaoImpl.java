package com.advertisement.dao.impl;

import com.advertisement.dao.CategoryDao;
import com.advertisement.entity.Category;
import java.util.List;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @SuppressWarnings("unchecked")
    @Override
    public List<Category> getAll() {
        String hql = "FROM Category as a ORDER BY a.categoryId";
        return (List<Category>) hibernateTemplate.find(hql);
    }

    @Override
    public Category getById(Integer categoryId) {
        return hibernateTemplate.get(Category.class, categoryId);
    }

    @Override
    public void add(Category category) {
        hibernateTemplate.save(category);
    }

    @Override
    public void update(Category category) {
        Category a = getById(category.getCategoryId());
        a.setCategoryName(category.getCategoryName());
        
        hibernateTemplate.update(a);
    }

    @Override
    public void delete(Integer categoryId) {
        hibernateTemplate.delete(getById(categoryId));
    }

    @SuppressWarnings("unchecked")
    @Override
    public boolean isExists(String categoryName) {
        String hql = "FROM Category as a WHERE a.categoryName = ?";
        List<Category> categories = (List<Category>) hibernateTemplate.find(hql, categoryName);
        return categories.size() > 0 ? true : false;
    }

}
