package vn.atpjsc.intern.demo.hibernate.dao;


import vn.atpjsc.intern.demo.hibernate.QueryParam;

import java.util.List;
import java.util.Map;

public interface EntityDAO<T> {
    public List<T> findAll();

    public T find(List<QueryParam> params);

    public List<T> query(List<QueryParam> params, Map<String, String> orderByFields);

    public T save(T entity);

    public T saveOrUpdate(T entity);

    public T findById(Long id);
}
