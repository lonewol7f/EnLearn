package net.enLearn.service;

import com.sun.xml.bind.v2.schemagen.xmlschema.List;
import net.enLearn.entity.FreeQuiz;

/**
 * Created by Osini Kithma
 * 8/26/21
 */
public interface FreeQuizService {

    List<FreeQuiz> getFreeQuizListById(int id);
    void saveOrUpdateFreeQuiz(FreeQuiz freeQuiz);
    void deleteFreeQuiz(int FreeQuizId);
    List<FreeQuiz > getFreeQuizByGrade(String greade)
}
