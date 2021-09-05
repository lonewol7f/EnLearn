package net.enLearn.controller;

import net.enLearn.entity.Course;
import net.enLearn.service.CourseService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Kalana on 20/07/2021
 */


@Controller
@RequestMapping("/courses")
public class CourseController {

    @Autowired
    private CourseService courseService;

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

    @GetMapping("/special-quizzes")
    public String showAddQuizPage() {
        return "add-special-quiz";
    }

    @GetMapping("/select-quizzes")
    public String showQuizSelectPage() {
        return "quiz-select-page";
    }

    @GetMapping("/create-zoom")
    public String showZoomCreatePage() {
        return "zoom-create";
    }

    @PostMapping("/save")
    public String saveCourse(@ModelAttribute("course") Course course) {
        courseService.saveOrUpdate(course);

        return "redirect:/teachers/profile-page-teacher";
    }








}
