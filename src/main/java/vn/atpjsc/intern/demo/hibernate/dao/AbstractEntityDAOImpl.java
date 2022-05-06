package vn.atpjsc.intern.demo.hibernate.dao;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import vn.atpjsc.intern.demo.hibernate.QueryParam;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class AbstractEntityDAOImpl<T> implements EntityDAO<T> {

    protected Logger logger;

    protected EntityManagerFactory factory;

    protected Class<T> genericClass;

    public AbstractEntityDAOImpl(EntityManagerFactory factory, Class<T> genericClass) {
        this.factory = factory;
        this.genericClass = genericClass;
        this.logger = LogManager.getLogger(getClass());
    }

    @Override
    public List<T> findAll() {
        EntityManager entityManager = null;
        try {
            entityManager = this.factory.createEntityManager();
            Query query = entityManager.createQuery("Select e from " + genericClass.getName() + " e");
            List res = query.getResultList();
            List<T> list = new ArrayList<>();
            for (Object o : res) {
                list.add(genericClass.cast(o));
            }
            return list;
        } catch (Exception e) {
            logger.error(getClass() + " findAll", e);
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
        return null;
    }

    @Override
    public T find(List<QueryParam> params) {
        if (params.isEmpty()) {
            return null;
        }
        EntityManager entityManager = null;
        try {
            entityManager = this.factory.createEntityManager();
            StringBuilder sql = new StringBuilder("SELECT e FROM " + genericClass.getName() + " e "
                    + "WHERE 1=1 ");
            for (QueryParam p : params) {
                sql.append(String.format(" AND e.%s %s :%s", p.getAttribute(), p.getCompare(), p.getAttribute()));
            }
            logger.info(sql.toString());
            Query query = entityManager.createQuery(sql.toString());
            for (QueryParam p : params) {
                query.setParameter(p.getAttribute(), p.getValue());
            }
            List res = query.getResultList();
            List<T> list = new ArrayList<>();
            for (Object o : res) {
                list.add(genericClass.cast(o));
            }
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        } catch (Exception e) {
            logger.error(getClass().getName() + "-find: ", e);
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
        return null;
    }

    @Override
    public List<T> query(List<QueryParam> params, Map<String, String> orderByFields) {
        if (params.isEmpty()) {
            return null;
        }
        EntityManager entityManager = null;
        try {
            entityManager = this.factory.createEntityManager();
            StringBuilder sql = new StringBuilder("SELECT e FROM " + genericClass.getName() + " e "
                    + "WHERE 1=1 ");
            for (QueryParam p : params) {
                sql.append(String.format(" AND e.%s %s :%s ", p.getAttribute(), p.getCompare(), p.getAttribute()));
            }
            if (!orderByFields.isEmpty()) {
                for (Map.Entry<String, String> orderByField : orderByFields.entrySet()) {
                    sql.append(String.format(" ORDER BY e.%s %s", orderByField.getKey(), orderByField.getValue()));
                }
            }
            Query query = entityManager.createQuery(sql.toString());
            for (QueryParam p : params) {
                query.setParameter(p.getAttribute(), p.getValue());
            }
            List res = query.getResultList();
            List<T> list = new ArrayList<>();
            for (Object o : res) {
                list.add(genericClass.cast(o));
            }
            return list;
        } catch (Exception e) {
            logger.error(getClass() + "-query: ", e);
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
        return null;
    }

    @Override
    public T save(T entity) {
        EntityManager entityManager = null;
        try {
            entityManager = this.factory.createEntityManager();
            entityManager.getTransaction().begin();
            entityManager.persist(entity);
            entityManager.flush();
            entityManager.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            logger.error(getClass().getName() + "-find: ", e);
            if (entityManager != null) {
                entityManager.getTransaction().rollback();
            }
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
        return null;
    }

    @Override
    public T saveOrUpdate(T entity) {
        EntityManager entityManager = null;
        try {
            entityManager = this.factory.createEntityManager();
            entityManager.getTransaction().begin();
            entity = entityManager.merge(entity);
            entityManager.flush();
            entityManager.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            logger.error(getClass().getName() + "-find: ", e);
            if (entityManager != null) {
                entityManager.getTransaction().rollback();
            }
        } finally {
            if (entityManager != null) {
                entityManager.close();
            }
        }
        return null;
    }

    public T findById(Long id) {
        List<QueryParam> params = new ArrayList<>();
        params.add(new QueryParam("id", "=", id));
        return find(params);
    }
}
