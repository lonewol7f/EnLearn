package net.enLearn.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Kalana on 20/07/2021
 */


@Controller
@RequestMapping("/courses")
public class CourseController {

    @Autowired
    private Logger logger;

    @GetMapping("")
    public String showCoursePage(){
        return "course-page";
    }

    @GetMapping("/create-courses")
    public String showCreateCoursePage(){ return "create-course";}

    @GetMapping("/add-courses")
    public String showAddCoursePage() {
        return "add-course";
    }

    @GetMapping("/videos")
    public String showVideoPage() {
        return "video-page";
    }

    @GetMapping("/add-videos")
    public String showAddVideoPage() {
        return "add-video";
    }

    @GetMapping("/add-quizzes")
    public String showAddQuizPage() {
        return "add-quiz";
    }

    @GetMapping("/select-quizzes")
    public String showQuizSelectPage() {
        return "quiz-select-page";
    }

    @GetMapping("/create-zoom")
    public String showZoomCreatePage() {
        return "zoom-create";
    }




}
