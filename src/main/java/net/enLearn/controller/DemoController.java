package net.enLearn.controller;

import net.enLearn.entity.Expense;
import net.enLearn.service.ExpenseService1;
import net.enLearn.service.FreeQuizService;
import net.enLearn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * Created by Kalana on 14/07/2021
 */

@Controller
public class DemoController {

    @Autowired
    private Logger logger;

    @Autowired
    private UserService userService;

    @Autowired
    private FreeQuizService freeQuizService;

    @Autowired
    private ExpenseService1 expenseService;

    @GetMapping("/")
    public String showHome() {
        return "index";
    }

    @GetMapping("/login")
    public String showLoginPage(Model model) {
        model.addAttribute("errors", userService.getErrors());
        userService.clearErrors();

        return "login";
    }


    @GetMapping("/Add-expenses")
    public String showAddExpensePage(Model model){
        model.addAttribute("expensesu", null);
        return "Add-expenses";}

    @GetMapping("/Confirm-expenses")
    public String showConfirmExpensePage(Model model) {
        List<Expense> getExpenses = expenseService.getAllExpenses();
        model.addAttribute("expensivedata", getExpenses);
        return "Confirm-expenses";
    }



    @GetMapping("/report")
    public String showReportPage() {
        return "report-page";
    }

    /*@GetMapping("/discount-rate-report")
    public String showDiscountRateReportPage() { return "discount-report"; }*/


    @GetMapping("/portal")
    public String showPortal() {
        return "portal";
    }



}
