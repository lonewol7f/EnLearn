package net.enLearn.controller;

import net.enLearn.entity.Discount;
import net.enLearn.service.DiscountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;


@Controller
@RequestMapping("/discounts")
public class DiscountController {


    @Autowired
    private DiscountService disService; //Service class reference to create Object from service class




    //==================================================================================================================
    //Method for redirecting to the Discount adding page
    @RequestMapping("/Add-Discount")
    public String showAddDiscountPage() {
        return "Add-Discount";
    }


    //==================================================================================================================
    //Method for redirecting to see added discounts (READ)
    @RequestMapping("/showDiscounts")
    public String showAddedDiscountPage(Model model){
        //To retrieve all the data in the table - discount
        List<Discount> displayallDiscount = disService.getAllDiscountByAdminId();
        model.addAttribute("alldiscount",displayallDiscount);

        return "AddedDiscounts";
    }


    //==================================================================================================================
    //Method for Adding data (CREATE)
    @RequestMapping(path = "/addDiscount", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("admin_id") int admin_id,
                                      @RequestParam("discount") int discount,
                                      @RequestParam("teacher_name") String teacher_name,
                                      @RequestParam("course") String course,
                                      @RequestParam("image") MultipartFile image,
                                      @RequestParam("description") String description,
                                      @RequestParam("grade") int grade,
                                      @RequestParam("title") String title,
                                      Model model){

        Discount discountObj;
        discountObj = new Discount(admin_id,discount,teacher_name,course,image,description,grade,title);

        disService.saveDiscount(discountObj);

        return "Add-Discount";
    }

    //==================================================================================================================
    //Method for deleting added discounts (DELETE)
    @RequestMapping("/deleteDiscount")
    public String deleteDiscount(Integer discountId){
        return "AddedDiscount";
    }

}