package vn.atpjsc.intern.demo.hibernate.dao;

import vn.atpjsc.intern.demo.hibernate.entities.DynamicTableColumnsEntity;

import javax.persistence.EntityManagerFactory;

public class DynamicTableColumnEntityDAOImpl extends AbstractEntityDAOImpl<DynamicTableColumnsEntity> {

    public DynamicTableColumnEntityDAOImpl(EntityManagerFactory factory) {
        super(factory, DynamicTableColumnsEntity.class);
    }

}
