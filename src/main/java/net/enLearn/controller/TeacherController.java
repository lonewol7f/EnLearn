

package net.enLearn.controller;

import net.enLearn.entity.Course;
import net.enLearn.entity.Event;
import net.enLearn.entity.FreeQuiz;
import net.enLearn.service.CourseService;
import net.enLearn.service.EventService;
import net.enLearn.service.FreeQuizService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Kalana on 21/07/2021
 */
@Controller
@RequestMapping("/teachers")
public class TeacherController {

    @Autowired
    private Logger logger;

    @Autowired
    private CourseService courseService;

    @Autowired
    private FreeQuizService freeQuizService;

    @Autowired
    private EventService eventService;

    @GetMapping("")
    public String showTeacherProfilePage(Model model) {
        List<Course> courses = courseService.getCourseListByTeacherId();
        model.addAttribute("courses", courses);
        return "profile-page-teacher";
    }

    @GetMapping("/register")
    public String showTeacherRegisterPage() {
        return "register-teacher";
    }
    
    @GetMapping("/Teacher-confirm")
    public String showTeacherConfirm() {
        return "Teacher-confirm";
    }
    
    @GetMapping("/notifications")
    public String showNotificationPage(Model model) {

        List<Event> events = eventService.getEventList();
        model.addAttribute("events", events);

        return "notification-view";
    }
    @GetMapping("/marks-and-access")
    public String showMarksAndAccessPage() {
        return "marks-and-access";
    }


    @PostMapping("/free-quiz-link/save")
    public String saveFreeQuizLink(@ModelAttribute("freeQuizLink") FreeQuiz freeQuiz){
        freeQuizService.saveOrUpdateFreeQuiz(freeQuiz);

        return "redirect:/free-quiz-links";
    }

    @GetMapping("/free-quiz/delete")
    public String deleteFreeQuiz(@RequestParam("freeQuizId") int id){
        freeQuizService.deleteFreeQuiz(id);
        return "redirect:/free-quiz-links";

    }

    @GetMapping("/Teacher-Income_report")
    public String showTeacherIncomeReportPage() {
        return "Teacher-Income-Report";
    }


}

