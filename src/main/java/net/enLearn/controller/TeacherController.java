

package net.enLearn.controller;

import net.enLearn.entity.*;
import net.enLearn.service.*;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Objects;

import static net.enLearn.controller.AdvertiserController.MAX_IMAGE_SIZE;

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


        Teacher teacher = teacherService.getTeacherById(userService.getCurrentsesion());
        User userdata = userService.getUserById(userService.getCurrentsesion());
        List<Course> courses = courseService.getCoursesByUserID((userdata.getId()));
        model.addAttribute("teacher", teacher);
        model.addAttribute("user", userdata);


        if (courses.size()==0){
            courses = userService.getCoursesByUserId_TEMP(4);
        }


        model.addAttribute("courses", courses);

        //TODO temporary


        return "profile-page-teacher";
    }

    @GetMapping("/delete")
    public String deleteAdvertisement(){
        int id = userService.getCurrentsesion();
        teacherService.delete(id);
        userService.setCurrentsesion(-1);
        return "redirect:/login";
    }


    @GetMapping("/register")
    public String showTeacherRegisterPage(Model model) {
        model.addAttribute("title", "Teacher registration");
        model.addAttribute("id", -1);


        model.addAttribute("teacherFirst", "");
        model.addAttribute("teacherLast", "");
        model.addAttribute("teacherEmail", "");
        model.addAttribute("teacherDistrict", "");
        model.addAttribute("teacherAddress", "");
        model.addAttribute("teacherDOB", "");
        model.addAttribute("teacherGen", "");
        model.addAttribute("teacherImg", "");
        model.addAttribute("teacherLic", "");
        model.addAttribute("teacherSOE", "");

        model.addAttribute("errors", userService.getErrors());
        userService.clearErrors();







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




    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("firstname") String first_name,
                                      @RequestParam("lastname") String last_name,
                                      @RequestParam("email") String email,
                                      @RequestParam("password") String password,
                                      @RequestParam("Address") String Address,
                                      @RequestParam("DOB") String DOB,
                                      @RequestParam("district") String district,
                                      @RequestParam("pf_image") MultipartFile photo,
                                      @RequestParam("licence") MultipartFile licence_im,
                                      @RequestParam("gender") String gender,
                                      @RequestParam("id") int id,
                                      @RequestParam("subject") String subject

                                      ){



        String image = null;
        String licence = null;
        {
            try {
                image = "data:image/jpg;base64," +
                        Base64.getEncoder().encodeToString(photo.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                licence = "data:image/jpg;base64," +
                        Base64.getEncoder().encodeToString(licence_im.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        if (photo.getSize()>MAX_IMAGE_SIZE){
            userService.addErrors("Image too large!");
            if (id==-1) return "redirect:/teachers/register";
            return "redirect:/teachers/update-profile";
        }

        if (!userService.newEmail(email)){
            if (id==-1) {
                userService.addErrors("Email already exist!");
                return "redirect:/teachers/register";
            }else {
                User user = userService.getUserById(id);
                if (!Objects.equals(user.getEmail(), email)) {
                    userService.addErrors("Email already exist!");
                    return "redirect:/teachers/update";
                }
            }

        }


        Teacher teacher;
        teacher = new Teacher(first_name,email,last_name, password,DOB,0,
                district,Address,image, licence,gender, subject);

        if (id!=-1){
            teacher.setId(id);
        }

        teacherService.saveOrUpdate(teacher);
        userService.setCurrentsesion(teacher.getId());
        return "redirect:/teachers";
    }


    @GetMapping("/update")
    public String updateStudent(Model model){
        int id = userService.getCurrentsesion();
        Teacher teacher = teacherService.getTeacherById(id);

        model.addAttribute("teacherFirst", teacher.getFirstName());
        model.addAttribute("teacherLast", teacher.getLastname());
        model.addAttribute("teacherEmail", teacher.getEmail());
        model.addAttribute("teacherDistrict", teacher.getDistrict());
        model.addAttribute("teacherAddress", teacher.getAddress());
        model.addAttribute("teacherDOB", teacher.getDOB());
        model.addAttribute("teacherGen", teacher.getGender());
        model.addAttribute("teacherImg", teacher.getImage_path());
        model.addAttribute("teacherLic", teacher.getLicence());
        model.addAttribute("teacherSOE", teacher.getSubject());

        model.addAttribute("errors", userService.getErrors());
        userService.clearErrors();


        model.addAttribute("id", id);
        model.addAttribute("title", "Edit profile");


        return "register-teacher";
    }

}

