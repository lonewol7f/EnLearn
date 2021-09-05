package net.enLearn.controller;

import net.enLearn.entity.Course;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Kalana on 21/07/2021
 */

@Controller
@RequestMapping("/teachers")
public class TeacherController {

    @Autowired
    private Logger logger;

    @GetMapping("")
    public String showTeacherProfilePage() {
        return "profile-page-teacher";
    }

    @GetMapping("/register")
    public String showTeacherRegisterPage() {
        return "register-teacher";
    }

    @GetMapping("/notifications")
    public String showNotificationPage() {
        return "notification-view";
    }

    @GetMapping("/marks-and-access")
    public String showMarksAndAccessPage() {
        return "marks-and-access";
    }

    @GetMapping("/quiz-ans-sub-link")
    public String showQuizAnswerSubmissionLinkPage() {
        return "quiz-ans-sub-link";
    }

    @GetMapping("/create-courses")
    public String showCourseCreateForm(Model model) {
        Course course = new Course();
        model.addAttribute("course", course);
        return "create-course";
    }

}
