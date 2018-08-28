package com.advertisement.dao;

import com.advertisement.entity.Division;
import java.util.List;

public interface DivisionDao {

    List<Division> getAll();

    Division getById(Integer divisionId);

    void add(Division division);

    void update(Division division);

    void delete(Integer divisionId);

    boolean isExists(String divisionName);
}
