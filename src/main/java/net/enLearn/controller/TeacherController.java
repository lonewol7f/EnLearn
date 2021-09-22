

package net.enLearn.controller;

import net.enLearn.entity.*;
import net.enLearn.service.*;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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

    @Autowired
    private UserService userService;

    @Autowired
    private TeacherService teacherService;

    @GetMapping("")
    public String showTeacherProfilePage(Model model) {

        List<Course> courses = courseService.getCourseListByTeacherId();
        Teacher teacherdata = teacherService.getTeacherById(userService.getCurrentsesion());
        User userdata = userService.getUserById(userService.getCurrentsesion());


        model.addAttribute("courses", courses);
        model.addAttribute("teacher", teacherdata);
        model.addAttribute("user", userdata);
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

    @GetMapping("/free-quiz-links")
    public String showFreeQuizLinksPage(Model model) {
        List<FreeQuiz> freeQuizList = freeQuizService.getFreeQuizList();
        model.addAttribute("freeQuizList",freeQuizList);
        model.addAttribute("freeQuizLink",new FreeQuiz());
        return "free-quiz-links";
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

    @GetMapping("/special-quizzes")
    public String showAddQuizPage(Model model) {
        model.addAttribute("specialQuizLink",new SpecialQuiz());
        return "add-special-quiz";
    }

    @GetMapping("/delete")
    public String deleteAdvertisement(){
        int id = userService.getCurrentsesion();
        userService.delete(userService.getUserById(id));
        userService.setCurrentsesion(-1);
        return "redirect:/login";
    }

    @GetMapping("/Teacher-Income_report")
    public String showTeacherIncomeReportPage() {
        return "Teacher-Income-Report";
    }


    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("firstname") String first_name,
                                      @RequestParam("lastname") String last_name,
                                      @RequestParam("email") String email,
                                      @RequestParam("password") String password,
                                      @RequestParam("Address") String Address,
                                      @RequestParam("DOB") String DOB,
                                      @RequestParam("district") String district,
                                      @RequestParam("pf_image") MultipartFile image,
                                      @RequestParam("licence") MultipartFile licence_im,
                                      @RequestParam("gender") String gender){

        String image_path = image.toString();
        String licence = licence_im.toString();

        Teacher teacher;
        teacher = new Teacher(first_name,email,last_name,password,DOB,0,
                district,Address,image_path, licence,gender);

        teacherService.saveOrUpdate(teacher);
        userService.setCurrentsesion(teacher.getId());

        return "redirect:/teachers";
    }
}

