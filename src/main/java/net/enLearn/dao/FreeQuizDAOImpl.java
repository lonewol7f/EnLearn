package net.enLearn.dao;

import net.enLearn.entity.FreeQuiz;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/25/21
 */

@Repository
public class FreeQuizDAOImpl implements FreeQuizDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<FreeQuiz> getFreeQuizList(){
        // get current session
        Session session = sessionFactory.getCurrentSession();

        Query<FreeQuiz> freeQuizQuery = session.createQuery("from FreeQuiz");
        List<FreeQuiz> freeQuizList = freeQuizQuery.getResultList();

        return freeQuizList;

    }

    @Override
    public void saveOrUpdateFreeQuiz(FreeQuiz freeQuiz){
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // if id associated with object, it will save
        session.saveOrUpdate(freeQuiz);
    }

    @Override
    public void deleteFreeQuiz(int id){
        // get current session
        Session session = sessionFactory.getCurrentSession();

        //get free quiz id
        FreeQuiz freeQuiz = getFreeQuizByQuizId(id);
        freeQuiz.getTeacher().getFreeQuizList().remove(freeQuiz);

        session.delete(freeQuiz);
    }

    @Override
    public FreeQuiz getFreeQuizByQuizId(int id){
        // get current session
        Session session = sessionFactory.getCurrentSession();

        //get free quiz
        FreeQuiz freeQuiz = session.get(FreeQuiz.class,id);

        return freeQuiz;
    }

    @Override
    public List<FreeQuiz> getFreeQuizByGrade(String grade){
        // get current session
        Session session = sessionFactory.getCurrentSession();

        //get Grade
        Query<FreeQuiz> freeQuizQuery = session.createQuery("from FreeQuiz where grade=:grade",FreeQuiz.class);
        freeQuizQuery.setParameter("grade",grade);
        List<FreeQuiz> freeQuizList = freeQuizQuery.getResultList();

        return freeQuizList;
    }

}
