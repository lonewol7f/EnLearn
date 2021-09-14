package net.enLearn.controller;

import net.enLearn.entity.Student;
import net.enLearn.entity.User;
import net.enLearn.service.StudentService;
import net.enLearn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Kalana on 20/07/2021
 */

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    private Logger logger;

    @Autowired
    private StudentService studentService;


    @Autowired
    private UserService Uservice;

    @GetMapping("")
    public String showStudentProfilePage() {
        return "profile-page-student";
    }

    @GetMapping("/register")
    public String showStudentRegisterPage() {

        return "register-student";
    }
    @GetMapping("/register")
    public String showStudentRegistrationPage(Model student){
        Student student1 = new Student();
        student.addAttribute("student", student);
        return "register-student";
    }


    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("fname7") String first_name,
                                      @RequestParam("lname7") String last_name,
                                      @RequestParam("email") String email,
                                      @RequestParam("password") String password,
                                      @RequestParam("Address") String Address,
                                      @RequestParam("DOB") int DOB,
                                      @RequestParam("district") String district,
                                      @RequestParam("image") MultipartFile image,
                                      @RequestParam("grade") int grade)
                                      {

        User studentObj;
        studentObj = new User(first_name,last_name,email,password,DOB,grade,district,Address);

        Uservice.saveOrUpdate(studentObj);
        //disService.saveDiscount(discountObj);
        return "register-student";
    }

}
