package net.enLearn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by Kalana on 14/07/2021
 */

@Controller
public class DemoController {

    @GetMapping("/")
    public String showHome(){
        return "home";
    }

}
