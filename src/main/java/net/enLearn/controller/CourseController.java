

package net.enLearn.controller;

import net.enLearn.entity.Course;
import net.enLearn.service.CourseService;
import net.enLearn.service.TeacherService;
import net.enLearn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Kalana on 20/07/2021
 */

@Controller
@RequestMapping("/courses")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private UserService userService;

    @Autowired
    private Logger logger;

    @GetMapping("")
    public String showCoursePage() {
        return "course-page";
    }

    @GetMapping("/create-courses")
    public String showCreateCoursePage(Model model){
        Course course = new Course();
        model.addAttribute("course", course);
        return "create-course";
    }

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

    @GetMapping("/select-quizzes")
    public String showQuizSelectPage() {
        return "quiz-select-page";
    }

    @GetMapping("/create-zoom")
    public String showZoomCreatePage() {
        return "zoom-create";
    }

}

