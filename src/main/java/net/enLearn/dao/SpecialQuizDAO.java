package net.enLearn.dao;

import net.enLearn.entity.SpecialQuiz;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/25/21
 */
public interface SpecialQuizDAO {

    List<SpecialQuiz> getSpecialQuizList();
    void saveOrUpdateSpecialQuiz(SpecialQuiz specialQuiz);
    void deleteSpecialQuiz(int id);
    List<SpecialQuiz> getSpecialQuizByTeacherId(int id);
    SpecialQuiz getSpecialQuizByVideoId(int id);

}