package net.enLearn.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Kalana on 20/07/2021
 */

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private Logger logger;

    @GetMapping("/teachers/notifications")
    public String showNotificationPage() {
        return "notification-view";
    }

}
