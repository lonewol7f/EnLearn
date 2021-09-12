package net.enLearn.service;

import net.enLearn.dao.FreeQuizDAO;
import net.enLearn.entity.FreeQuiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/26/21
 */

@Service
public class FreeQuizServiceImpl implements FreeQuizService {

    @Autowired
    private FreeQuizDAO freeQuizDAO;

    @Override
    @Transactional
    public List<FreeQuiz> getFreeQuizList(){
        return freeQuizDAO.getFreeQuizList();
    }

    @Override
    @Transactional
    public void saveOrUpdateFreeQuiz(FreeQuiz freeQuiz){
        freeQuizDAO.saveOrUpdateFreeQuiz(freeQuiz);
    }

    @Override
    @Transactional
    public void deleteFreeQuiz(int id){
        freeQuizDAO.deleteFreeQuiz(id);
    }

    @Override
    @Transactional
    public FreeQuiz getFreeQuizByQuizId(int id){
        return freeQuizDAO.getFreeQuizByQuizId(id);
    }

    @Override
    @Transactional
    public List<FreeQuiz> getFreeQuizByGrade(String grade){
        return freeQuizDAO.getFreeQuizByGrade(grade);
    }

    @Override
    @Transactional
    public List<FreeQuiz> getFreeQuizListByTeacherId(int teacherId) {
        return freeQuizDAO.getFreeQuizListByTeacherId(teacherId);
    }
}