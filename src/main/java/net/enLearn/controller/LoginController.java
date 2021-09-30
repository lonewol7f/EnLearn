package net.enLearn.controller;

import net.enLearn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/login",method=RequestMethod.POST)
    public String executeLogin(
            HttpServletRequest request) {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int userid = userService.Checkuse(email, password);

        if (userid < 0) {
            switch (userid) {
                case -1:
                userService.addErrors("User doesn't exist!");
                break;

                case -2:
                userService.addErrors("Invalid password!");
                break;

                default:
                userService.addErrors("Unknown error!");
                break;


            }
            //TODO 0001 stop redirect
            return "redirect:/login";
        } else {
            int i = userService.Checktype(userid);
            userService.setCurrentsesion(userid);
            if (i == 1) {
                return "redirect:/teachers";
            } else if (i == 2) {
                return "redirect:/students";

            } else if (i == 3) {
                return "redirect:/advertisers";
            } else {
                return "redirect:/login";

            }

        }
    }
}



