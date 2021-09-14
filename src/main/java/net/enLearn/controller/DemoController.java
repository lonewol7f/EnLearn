package net.enLearn.controller;

import net.enLearn.entity.User;
import net.enLearn.service.FreeQuizService;
import net.enLearn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by Kalana on 14/07/2021
 */

@Controller
public class DemoController {

    @Autowired
    private Logger logger;

    @Autowired
    private FreeQuizService freeQuizService;

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String showHome() {
        return "index";
    }

    @GetMapping("/shop")
    public String showShopPage(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            User user = userService.getUserById(userService.getLoggedUserId());
            model.addAttribute("coins", user.getCoins());
        }

        return "shop";
    }


    @GetMapping("/Add-Discount")
    public String showAddDiscountPage() {
        return "Add-Discount";
    }

    @GetMapping("/Add-expenses")
    public String showAddExpensePage(){return "Add-expenses";}

    @GetMapping("/Confirm-expenses")
    public String showConfirmExpensePage() {
        return "Confirm-expenses";
    }

    @GetMapping("/Salaries")
    public String showSalariesPage() {
        return "Salaries";
    }

    @GetMapping("/report")
    public String showReportPage() {
        return "report-page";
    }

    @GetMapping("/discount-rate-report")
    public String showDiscountRateReportPage() { return "discount-report"; }


    @GetMapping("/portal")
    public String showPortal() {
        return "portal";
    }


}
