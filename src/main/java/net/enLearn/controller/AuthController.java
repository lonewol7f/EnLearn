package net.enLearn.controller;

import net.enLearn.entity.Student;
import net.enLearn.service.StudentService;
import net.enLearn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Kalana on 10/09/2021
 */

@Controller
public class AuthController {

    @Autowired
    private Logger logger;

    @Autowired
    private StudentService studentService;

    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/login")
    public String showLoginPage(Model model) {

        Student student = new Student();
        model.addAttribute("student", student);
        return "login";
    }

    @GetMapping("/profile")
    public String showProfile(HttpServletRequest request) {
        if (request.isUserInRole("ROLE_ADMIN")) {
            return "redirect:/admins";
        }
        if (request.isUserInRole("ROLE_TEACHER")) {
            return "redirect:/teachers";
        }
        if (request.isUserInRole("ROLE_STUDENT")) {
            return "redirect:/students";
        }
        
        return "redirect:/login";
    }

    @GetMapping("/register")
    public String register(Model model) {
        model.addAttribute("student", new Student());

        return "register-page";
    }

    @GetMapping("/new-login")
    public String showNewLoginPage() {

        return "login-page";
    }

    @PostMapping("/register-user")
    public String registerUser(@ModelAttribute("student") Student student, RedirectAttributes redirectAttributes) {

        if (userService.checkExistingUser(student.getEmail())) {
            redirectAttributes.addAttribute("error");  // TODO: show user already exist error in register page

            return "redirect:/register-page";
        }

        student.setPassword(passwordEncoder.encode(student.getPassword()));
        student.setEnabled(true);
        studentService.registerUser(student);

        redirectAttributes.addAttribute("registered");   // TODO: show user successfully registered message in login

        return "redirect:/login";
    }

    @GetMapping("/forbidden")
    public String showForbiddenPage() {
        return "forbidden";
    }
}
