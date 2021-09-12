package net.enLearn.service;

import net.enLearn.dao.SpecialQuizDAO;
import net.enLearn.entity.SpecialQuiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/26/21
 */

@Service
public class SpecialQuizServiceImpl implements SpecialQuizService{

    @Autowired
    private SpecialQuizDAO specialQuizDAO;

    @Override
    @Transactional
    public List<SpecialQuiz> getSpecialQuizList(){
        return specialQuizDAO.getSpecialQuizList();
    }

    @Override
    @Transactional
    public void saveOrUpdateSpecialQuiz(SpecialQuiz specialQuiz){
        specialQuizDAO.saveOrUpdateSpecialQuiz(specialQuiz);
    }

    @Override
    @Transactional
    public void deleteSpecialQuiz(int id){
        specialQuizDAO.deleteSpecialQuiz(id);
    }

    @Override
    @Transactional
    public SpecialQuiz showSpecialQuizByTeacherId(int id){
        return specialQuizDAO.showSpecialQuizByTeacherId(id);
    }

    @Override
    @Transactional
    public List<SpecialQuiz> getSpecialQuizByTeacherId(int id){
        return specialQuizDAO.getSpecialQuizByTeacherId(id);
    }
}
