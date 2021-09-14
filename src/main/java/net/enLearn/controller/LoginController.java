package net.enLearn.controller;

import net.enLearn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/login-action",method=RequestMethod.POST)
    public void executeLogin(
                                HttpServletRequest request, HttpServletResponse response
    )
    {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try
        {
            boolean isValidUser = userService.isValidUser(email, password);
            if(isValidUser)
            {
                System.out.println("User Login Successful");
                request.setAttribute("loggedInUser", email);
                response.sendRedirect("/");
            }
            else
            {
                request.setAttribute("message", "Invalid credentials!!");
                response.sendRedirect("/");
            }

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

    }
}



