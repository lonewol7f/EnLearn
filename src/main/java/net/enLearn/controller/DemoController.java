package net.enLearn.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by Kalana on 14/07/2021
 */

@Controller
public class DemoController {

    @Autowired
    private Logger logger;

    @GetMapping("/")
    public String showHome(){
        return "index";
    }

}
