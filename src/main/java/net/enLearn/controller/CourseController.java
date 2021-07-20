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
@RequestMapping("/courses")
public class CourseController {

    @Autowired
    private Logger logger;

    @GetMapping("/videos")
    public String showVideoPage() {
        return "video-page";
    }
}
