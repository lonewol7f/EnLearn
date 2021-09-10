package net.enLearn.controller;

import net.enLearn.entity.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Kalana on 10/09/2021
 */

@Controller
public class AuthController {

    @GetMapping("/login")
    public String showLoginPage(Model model) {

        model.addAttribute("user", new Student());

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
}
