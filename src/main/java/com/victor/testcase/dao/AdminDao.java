package com.victor.testcase.dao;

import com.victor.testcase.dao.entity.RenderingEngine;
import java.util.List;

public interface AdminDao {
    
    void openSession();
    
    void closeSession();

    List<RenderingEngine> getAllRows();

    RenderingEngine getEngine(int id);

    void createEngine(RenderingEngine engine);
    
    void updateEngine(RenderingEngine engine);
    
    void deleteEngine(int id);

}
