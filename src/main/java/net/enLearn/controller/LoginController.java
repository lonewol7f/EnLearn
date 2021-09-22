package net.enLearn.controller;

import net.enLearn.entity.User;
import net.enLearn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/login-action",method=RequestMethod.POST)
    public String executeLogin(
            HttpServletRequest request, HttpServletResponse response, Model model
            )
    {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int userid = userService.Checkuse(email,password);

        if(userid==-1){

            try {
                request.setAttribute("message", "Invalid credentials!!");
                response.sendRedirect("/");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else{
            int typeid = userService.Chectype(userid);
            userService.setCurrentsesion(userid);
            if(typeid==1){
                User userdata = userService.getUserById(userid);
                model.addAttribute("user", userdata);
                return "profile-page-teacher";
            }
            else if(typeid==2){
                User userdata = userService.getUserById(userid);
                model.addAttribute("user", userdata);
                return "profile-page-student";

            }
            else if(typeid==3){

                User userdata = userService.getUserById(userid);
                model.addAttribute("userdata", userdata);
                return "profile-page-advertiser";

            }
            else{

                return "redirect:/";

            }

        }
//        try
//        {
//            boolean isValidUser = userService.isValidUser(email, password);
//            if(isValidUser)
//            {
//                System.out.println("User Login Successful");
//                request.setAttribute("loggedInUser", email);
//                response.sendRedirect("/");
//            }
//            else
//            {
//                request.setAttribute("message", "Invalid credentials!!");
//                response.sendRedirect("/");
//            }
//
//        }
//        catch(Exception e)
//        {
//            e.printStackTrace();
//        }

        return "redirect:/";

    }
}



