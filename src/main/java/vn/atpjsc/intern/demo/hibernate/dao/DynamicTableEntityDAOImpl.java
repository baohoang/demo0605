package vn.atpjsc.intern.demo.hibernate.dao;

import vn.atpjsc.intern.demo.hibernate.entities.DynamicTablesEntity;

import javax.persistence.EntityManagerFactory;

public class DynamicTableEntityDAOImpl extends AbstractEntityDAOImpl<DynamicTablesEntity> {

    public DynamicTableEntityDAOImpl(EntityManagerFactory factory) {
        super(factory, DynamicTablesEntity.class);
    }
}
