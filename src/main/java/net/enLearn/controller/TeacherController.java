

package net.enLearn.controller;

import net.enLearn.entity.*;
import net.enLearn.service.*;
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
    private EventService eventService;

    @Autowired
    private CourseService courseService;

    @Autowired
    private FreeQuizService freeQuizService;

    @Autowired
    private UserService userService;

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private NotificationService notificationService;

    @Autowired
    private SpecialQuizService specialQuizService;


    @GetMapping("")
    public String showTeacherProfilePage(Model model) {
        int id = userService.getLoggedUserId();
        List<Course> courses = courseService.getCourseListByTeacherId(id);
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
        int teacherId = userService.getLoggedUserId();
        List<Event> events = eventService.getEventList();
        List<Notification> notifications = notificationService.getNotificationByTeacherId(teacherId);
        model.addAttribute("events", events);
        model.addAttribute("notifications", notifications);
        return "notification-view";
    }



    @GetMapping("/marks-and-access")
    public String showMarksAndAccessPage(Model model) {
        return "marks-and-access";
    }


    @PostMapping("/free-quiz-link/save")
    public String saveFreeQuizLink(@ModelAttribute("freeQuizLink") FreeQuiz freeQuiz) {

        int id = userService.getLoggedUserId();
        Teacher teacher = teacherService.getTeacherById(id);
        freeQuiz.setTeacher(teacher);
        freeQuizService.saveOrUpdateFreeQuiz(freeQuiz);
        return "redirect:/teachers/free-quiz-links";
    }


    @GetMapping("/free-quiz/delete")
    public String deleteFreeQuiz(@RequestParam("freeQuizId") int id) {
        freeQuizService.deleteFreeQuiz(id);
        return "redirect:/teachers/free-quiz-links";

    }


    @GetMapping("/Teacher-Income_report")
    public String showTeacherIncomeReportPage() {
        return "Teacher-Income-Report";
    }

    @GetMapping("/free-quiz-links")
    public String showFreeQuizLinksPage(Model model) {
        int teacherId = userService.getLoggedUserId();
        List<FreeQuiz> freeQuizList = freeQuizService.getFreeQuizListByTeacherId(teacherId);
        model.addAttribute("freeQuizList", freeQuizList);
        model.addAttribute("freeQuizLink", new FreeQuiz());
        return "free-quiz-links";
    }


    //Course create
    @PostMapping("/courses/save")
    public String saveCourse(@ModelAttribute("course") Course course) {
        int teacherId = userService.getLoggedUserId();
        Teacher teacher = teacherService.getTeacherById(teacherId);
        course.setTeacher(teacher);
        courseService.saveOrUpdate(course);
        return "redirect:/teachers";
    }

    @GetMapping("/create-courses")
    public String showCreateCoursePage(Model model) {
        Course course = new Course();
        model.addAttribute("course", course);
        return "create-course";
    }

    //Course Delete
    @GetMapping("/courses/delete")
    public String deleteTeacher(@RequestParam("courseId") int id) {
        courseService.deleteCourse(id);
        return "redirect:/teachers";
    }

    //Course Edit
    @GetMapping("/courses/update")
    public String showCourseUpdateForm(@RequestParam("courseId") int id, Model model) {
        Course course = courseService.getCourseById(id);
        model.addAttribute("course", course);
        return "create-course";
    }


    @GetMapping("/special-quizzes")
    public String showAddQuizPage(Model model) {
        int teacherId = userService.getLoggedUserId();
        List<SpecialQuiz> specialQuizList = specialQuizService.getSpecialQuizByTeacherId(teacherId); // TODO Must pass Teacher Id
        model.addAttribute("specialQuizList", specialQuizList);
        model.addAttribute("specialQuizLink", new SpecialQuiz());
        return "add-special-quiz";
    }


    @PostMapping("/special-quiz-link/save")
    public String saveSpecialQuizLink(@ModelAttribute("specialQuizLink") SpecialQuiz specialQuiz) {

        specialQuiz.setTeacher(teacherService.getTeacherById(userService.getLoggedUserId()));
        specialQuizService.saveOrUpdateSpecialQuiz(specialQuiz);
        return "redirect:/teachers/special-quizzes";
    }


    @GetMapping("/special-quiz/delete")
    public String deleteSpecialQuiz(@RequestParam("specialQuizId") int id) {
        specialQuizService.deleteSpecialQuiz(id);
        return "redirect:/teachers/special-quizzes";
    }

}

