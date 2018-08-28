package com.advertisement.dao.impl;

import com.advertisement.dao.UserDao;
import com.advertisement.entity.User;
import java.util.List;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @SuppressWarnings("unchecked")
    @Override
    public List<User> getAll() {
        String hql = "FROM User as a ORDER BY a.userId";
        return (List<User>) hibernateTemplate.find(hql);
    }

    @Override
    public User getById(Integer userId) {
        return hibernateTemplate.get(User.class, userId);
    }

    @Override
    public void add(User user) {
        hibernateTemplate.save(user);
    }

    @Override
    public void update(User user) {
        User a = getById(user.getUserId());
        a.setUserName(user.getUserName());
        a.setUserEmail(user.getUserEmail());
        a.setUserPassword(user.getUserPassword());
        hibernateTemplate.update(a);
    }

    @Override
    public void delete(Integer userId) {
        hibernateTemplate.delete(getById(userId));
    }

    @SuppressWarnings("unchecked")
    @Override
    public boolean isExists(String userName, String userEmail, String userPassword) {
        String hql = "FROM User as a WHERE a.userName = ? and a.userEmail = ? and a.userPassword = ? ";
        List<User> users = (List<User>) hibernateTemplate.find(hql, userName, userEmail, userPassword);
        return users.size() > 0 ? true : false;
    }

}
