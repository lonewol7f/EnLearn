package net.enLearn.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Kalana on 21/07/2021
 */


@Controller
@RequestMapping("/advertisers")
public class AdvertiserController {

    @Autowired
    private Logger logger;

    @GetMapping("")
    public String showAdvertiserProfilePage() {
        return "profile-page-advertiser";
    }

    @GetMapping("/register")
    public String showAdvertiserRegisterPage() {
        return "register-advertiser";
    }

}
