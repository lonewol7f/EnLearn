package net.enLearn.controller;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Student;
import net.enLearn.entity.Teacher;
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
    public String showStudentProfilePage(Model model) {

        User userdata = Uservice.getUserById(Uservice.getCurrentsesion());
        model.addAttribute("user", userdata);
        return "profile-page-student";
    }


    /*@GetMapping("/register")
    public String showStudentRegisterPage() {

        return "register-student";
    }*/

    @GetMapping("/register")
    public String showStudentRegistrationPage(Model student){
        Student student1 = new Student();
        student.addAttribute("student", student);
        return "register-student";
    }
    @GetMapping("/update")
    public String updateStudent(@RequestParam("advertisementId") int id, Model model){
//        Advertisement advertisement = advertisementService.getAdvertisementId(id);
//        model.addAttribute("advertisementId", advertisement.getId());
//        model.addAttribute("advertisementDes", advertisement.getDescription());
//        model.addAttribute("advertisementPr", advertisement.getPrice_range());
//        model.addAttribute("advertisementTitle", advertisement.getTitle());

        return "upload-advertisement";
    }


    @GetMapping("/delete")
    public String deleteAdvertisement(){
        int id = Uservice.getCurrentsesion();
        Uservice.delete(Uservice.getUserById(id));
        Uservice.setCurrentsesion(-1);
        return "redirect:/login";
    }


    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("firstname") String first_name,
                                      @RequestParam("lastname") String last_name,
                                      @RequestParam("email") String email,
                                      @RequestParam("password") String password,
                                      @RequestParam("Address") String Address,
                                      @RequestParam("DOB") String DOB,
                                      @RequestParam("district") String district,
                                      @RequestParam("image") MultipartFile image,
                                      @RequestParam("grade") int grade,
                                      @RequestParam("school") String school,
                                      @RequestParam("gender") String gender
                                      )
                                      {

        Student studentObj;
    String image_path = image.toString();

        studentObj = new Student(first_name,email,last_name,password,DOB,grade,
                district,Address,image_path, school, gender);

        studentService.saveOrUpdate(studentObj);
        Uservice.setCurrentsesion(studentObj.getId());
        return "redirect:/students";
    }

}
