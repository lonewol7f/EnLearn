package net.enLearn.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Kalana on 29/07/2021
 */

@Repository
public class ReplyDAOImpl implements ReplyDAO{

    @Autowired
    private SessionFactory sessionFactory;

}
