package com.advertisement.dao.impl;

import com.advertisement.dao.DivisionDao;
import com.advertisement.entity.Division;
import java.util.List;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

@Repository
@Transactional
public class DivisionDaoImpl implements DivisionDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @SuppressWarnings("unchecked")
    @Override
    public List<Division> getAll() {
        String hql = "FROM Division as a ORDER BY a.divisionId";
        System.out.println("divdao");
        return (List<Division>) hibernateTemplate.find(hql);
    }

    @Override
    public Division getById(Integer divisionId) {
        return hibernateTemplate.get(Division.class, divisionId);
    }

    @Override
    public void add(Division division) {
        hibernateTemplate.save(division);
    }

    @Override
    public void update(Division division) {
        Division a = getById(division.getDivisionId());
        a.setDivisionName(division.getDivisionName());
//        a.setAdminEmail(admin.getAdminEmail());
//        a.setAdminPassword(admin.getAdminPassword());
        hibernateTemplate.update(a);
    }

    @Override
    public void delete(Integer divisionId) {
        hibernateTemplate.delete(getById(divisionId));
    }

    @SuppressWarnings("unchecked")
    @Override
    public boolean isExists(String divisionName) {
        String hql = "FROM Division as a WHERE a.divisionName = ?";
        List<Division> divisions = (List<Division>) hibernateTemplate.find(hql, divisionName);
        return divisions.size() > 0 ? true : false;
    }

}
