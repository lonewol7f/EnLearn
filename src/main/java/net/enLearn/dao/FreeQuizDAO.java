package net.enLearn.dao;

import net.enLearn.entity.FreeQuiz;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/25/21
 */
public interface FreeQuizDAO {

    List<FreeQuiz> getFreeQuizList();
    List<FreeQuiz> getFreeQuizListByTeacherId(int teacherId);
    void saveOrUpdateFreeQuiz(FreeQuiz freeQuiz);
    void deleteFreeQuiz(int id);
    FreeQuiz getFreeQuizByQuizId(int id);
    List<FreeQuiz> getFreeQuizByGrade(String grade);

}
