package com.victor.testcase.dao;

import com.victor.testcase.dao.entity.RenderingEngine;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("hibernateDao")
class AdminDaoHibernateImpl implements AdminDao {

    @Autowired
    private SessionFactory factory;

    private Session currentSession;

    @Override
    public List<RenderingEngine> getAllRows() {

        Transaction tx = null;
        List<RenderingEngine> queryResult = null;
        if (currentSession != null) {
            try {
                tx = currentSession.beginTransaction();
                queryResult = currentSession.createQuery("SELECT r FROM RenderingEngine r").list();
                tx.commit();
            } catch (Exception ex) {
                ex.printStackTrace();
                if (tx != null) {
                    tx.rollback();
                }
            }
        }
        return queryResult;
    }

    @Override
    public RenderingEngine getEngine(int id) {
        Transaction tx = null;
        RenderingEngine queryResult = null;
        if (currentSession != null) {
            try {
                tx = currentSession.beginTransaction();
                queryResult = currentSession.get(RenderingEngine.class, id);
                tx.commit();
            } catch (Exception ex) {
                ex.printStackTrace();
                if (tx != null) {
                    tx.rollback();
                }
            }
        }
        return queryResult;
    }

    @Override
    public void createEngine(RenderingEngine engine) {
        Transaction tx = null;
        if (currentSession != null) {
            try {
                tx = currentSession.beginTransaction();
                currentSession.save(engine);
                tx.commit();
            } catch (Exception ex) {
                ex.printStackTrace();
                if (tx != null) {
                    tx.rollback();
                }
            }
        }
    }

    @Override
    public void updateEngine(RenderingEngine engine) {
        Transaction tx = null;
        if (currentSession != null) {
            try {
                tx = currentSession.beginTransaction();
                currentSession.update(engine);
                tx.commit();
            } catch (Exception ex) {
                ex.printStackTrace();
                if (tx != null) {
                    tx.rollback();
                }
            }
        }
    }

    @Override
    public void deleteEngine(int id) {
        Transaction tx = null;
        if (currentSession != null) {
            try {
                tx = currentSession.beginTransaction();
                RenderingEngine engine = currentSession.load(RenderingEngine.class, id);
                currentSession.delete(engine);
                tx.commit();
            } catch (Exception ex) {
                ex.printStackTrace();
                if (tx != null) {
                    tx.rollback();
                }
            }
        }
    }

    /*
    There are implemented public open/closeSession methods
    to reduce hardcoding of session opening/closing in every CRUD operation.
    Now session opening/closing should be managed from the controller/service leyer.
    */
    @Override
    public void openSession() {
        currentSession = factory.openSession();
    }

    @Override
    public void closeSession() {
        if (currentSession != null) {
            currentSession.close();
        }
    }
}
