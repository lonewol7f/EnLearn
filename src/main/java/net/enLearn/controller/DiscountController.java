package net.enLearn.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("discounts")
public class DiscountController {

    @Autowired
    private Logger logger;

    @RequestMapping(path = "/addDiscount", method= RequestMethod.POST)
    public String addDiscount(){
        System.out.println("addede data");
        return "Add-Discount";
    }

}