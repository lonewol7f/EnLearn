package net.enLearn.service;

import net.enLearn.entity.FreeQuiz;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/26/21
 */
public interface FreeQuizService {

    List<FreeQuiz> getFreeQuizList();
    List<FreeQuiz> getFreeQuizListByTeacherId(int teacherId);
    void saveOrUpdateFreeQuiz(FreeQuiz freeQuiz);
    void deleteFreeQuiz(int id);
    FreeQuiz getFreeQuizByQuizId(int id);
    List<FreeQuiz> getFreeQuizByGrade(String grade);


}