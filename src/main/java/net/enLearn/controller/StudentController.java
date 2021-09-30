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

import java.io.IOException;
import java.util.Base64;
import java.util.Objects;

import static net.enLearn.controller.AdvertiserController.MAX_IMAGE_SIZE;

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
    private UserService userService;


    @GetMapping("")
    public String showStudentProfilePage(Model model) {
        int userId = userService.getCurrentsesion();
        model.addAttribute("user",
                studentService.getStudentById(userId));

        model.addAttribute("courses",
                userService.getCoursesByUserId_TEMP(userId));

        return "profile-page-student";
    }



    @GetMapping("/register")
    public String showStudentRegistrationPage(Model model){
        model.addAttribute("studentFirst", "");
        model.addAttribute("studentLast", "");
        model.addAttribute("studentEmail", "");
        model.addAttribute("studentDistrict", "");
        model.addAttribute("studentAddress", "");
        model.addAttribute("studentDOB", "");
        model.addAttribute("studentGen", "");
        model.addAttribute("studentImg", "");
        model.addAttribute("errors", userService.getErrors());
        userService.clearErrors();

        model.addAttribute("id", -1);
        model.addAttribute("title", "Student Registration");

        return "register-student";
    }


    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("firstname") String first_name,
                                      @RequestParam("lastname") String last_name,
                                      @RequestParam("email") String email,
                                      @RequestParam("password") String password,
                                      @RequestParam("Address") String Address,
                                      @RequestParam("DOB") String DOB,
                                      @RequestParam("district") String district,
                                      @RequestParam("image") MultipartFile photo,
                                      @RequestParam("grade") int grade,
                                      @RequestParam("school") String school,
                                      @RequestParam("gender") String gender,
                                      @RequestParam("id") int id

                                      )
                                      {

          String image = null;
          try {
              image = "data:image/jpg;base64,"+
                      Base64.getEncoder().encodeToString(photo.getBytes());
          } catch (IOException e) {
              e.printStackTrace();
          }

          if (photo.getSize()>MAX_IMAGE_SIZE){
              userService.addErrors("Image too large!");
              if (id==-1) return "redirect:/students/register";
              return "redirect:/students/update-profile";
          }

          if (!userService.newEmail(email)){
              if (id==-1) {
                  userService.addErrors("Email already exist!");
                  return "redirect:/students/register";
              }else {
                  User user = userService.getUserById(id);
                  if (!Objects.equals(user.getEmail(), email)) {
                      userService.addErrors("Email already exist!");
                      return "redirect:/students/update";
                  }
              }

          }




              Student student = new Student(first_name,email,
                  last_name,password,DOB,grade,
                district,Address,image, school, gender);

          if (id!=-1){
              student.setId(id);
          }

        studentService.saveOrUpdate(student);
        userService.setCurrentsesion(student.getId());
        return "redirect:/students";
    }



    @GetMapping("/update")
    public String updateStudent(@RequestParam("studentId") int id, Model model){
        Student student = studentService.getStudentById(id);

        model.addAttribute("studentFirst", student.getFirstName());
        model.addAttribute("studentLast", student.getLastname());
        model.addAttribute("studentEmail", student.getEmail());
        model.addAttribute("studentDistrict", student.getDistrict());
        model.addAttribute("studentAddress", student.getAddress());
        model.addAttribute("studentDOB", student.getDOB());
        model.addAttribute("studentGen", student.getGender());
        model.addAttribute("studentImg", student.getImage_path());
        model.addAttribute("errors", userService.getErrors());
        userService.clearErrors();

        model.addAttribute("id", id);
        model.addAttribute("title", "Edit profile");


        return "register-student";
    }


    @GetMapping("/delete")
    public String deleteAdvertisement(){
        int id = userService.getCurrentsesion();
        studentService.delete(id);
        userService.setCurrentsesion(-1);
        userService.addErrors("Your account was deleted.");
        return "redirect:/login";
    }


}
