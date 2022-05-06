import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import vn.atpjsc.intern.demo.hibernate.HibernateUtil;
import vn.atpjsc.intern.demo.hibernate.dao.DynamicTableColumnEntityDAOImpl;
import vn.atpjsc.intern.demo.hibernate.dao.DynamicTableEntityDAOImpl;
import vn.atpjsc.intern.demo.hibernate.entities.DynamicTableColumnsEntity;
import vn.atpjsc.intern.demo.hibernate.entities.DynamicTablesEntity;

import java.util.List;

public class Application {
    private static final Logger logger = LogManager.getLogger(Application.class);

    public static void main(String[] args) {
        HibernateUtil hibernateUtil = new HibernateUtil(HibernateUtil.DEFAULT);
//        EntityManager entityManager = hibernateUtil.getDbConnector().createEntityManager();
        DynamicTableEntityDAOImpl dynamicTableEntityDAO = new DynamicTableEntityDAOImpl(hibernateUtil.getDbConnector());
        List<DynamicTablesEntity> dynamicTablesEntityList = dynamicTableEntityDAO.findAll();
        for (DynamicTablesEntity e : dynamicTablesEntityList) {
            logger.info(e);
            List<DynamicTableColumnsEntity> dynamicTableColumns = e.getDynamicTableColumns();
            for (DynamicTableColumnsEntity c : dynamicTableColumns) {
                logger.info(c);
            }
        }
        DynamicTableColumnEntityDAOImpl dynamicTableColumnEntityDAO = new DynamicTableColumnEntityDAOImpl(hibernateUtil.getDbConnector());
        DynamicTableColumnsEntity dynamicTableColumn = dynamicTableColumnEntityDAO.findById(10L);
        logger.info(dynamicTableColumn);
        hibernateUtil.close();
    }
}
