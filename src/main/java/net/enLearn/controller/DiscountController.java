package net.enLearn.controller;

import net.enLearn.entity.Discount;
import net.enLearn.service.DiscountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
    /*@RequestMapping(path = "/addDiscount", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("admin_id") int admin_id,
                                      @RequestParam("discount") int discount,
                                      @RequestParam("teacher_name") String teacher_name,
                                      @RequestParam("course") String course,
                                      @RequestParam("image") MultipartFile image,
                                      @RequestParam("description") String description,
                                      @RequestParam("grade") int grade,
                                      @RequestParam("title") String title){

        Discount discountObj;
        discountObj = new Discount(admin_id,discount,teacher_name,course,image,description,grade,title);

        disService.saveDiscount(discountObj);


        return "Add-Discount";
    }*/



    //This worked
    private static final String UPLOAD_DIRECTORY ="/resources/img";


    @RequestMapping(path = "/addDiscount", method = RequestMethod.POST)
    public String processDiscountForm(@RequestParam("admin_id") int admin_id,
                                      @RequestParam("discount") int discount,
                                      @RequestParam("teacher_name") String teacher_name,
                                      @RequestParam("course") String course,
                                      @RequestParam("image") MultipartFile image,
                                      @RequestParam("description") String description,
                                      @RequestParam("grade") int grade,
                                      @RequestParam("title") String title, HttpSession session) throws Exception{

        ServletContext context = session.getServletContext();
        String path = context.getRealPath(UPLOAD_DIRECTORY);
        String filename = image.getOriginalFilename();

        System.out.println(path+" "+filename);

        byte[] bytes = image.getBytes();
        BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));
        stream.write(bytes);
        stream.flush();
        stream.close();



        Discount discountObj;
        discountObj = new Discount(admin_id,discount,teacher_name,course,image.getBytes(),description,grade,title);

        disService.saveDiscount(discountObj);


        return "Add-Discount";
    }




    //==================================================================================================================
    //Method for deleting added discounts (DELETE)
    @RequestMapping("/deleteDiscount")
    public String deleteDiscount(@RequestParam("AddedDiscountID") int discountId, Model model){
        disService.deleteDiscount(discountId);
        List<Discount> displayallDiscount = disService.getAllDiscountByAdminId();
        model.addAttribute("alldiscount",displayallDiscount);

        return "AddedDiscounts";
    }



    //==================================================================================================================
    //Display data in Shop Page
    //For Shop Page
    @RequestMapping("/shop")
    public String showShopPage(Model model) {
        List<Discount> discount = disService.getAllDiscountByAdminId();
        model.addAttribute("showCard",discount);
        return "shop";
    }


    //For Test Shop Page(Exceptional)
    @RequestMapping("/Test-Shop")
    public String showTestShopPage(Model model) {
        List<Discount> discount = disService.getAllDiscountByAdminId();
        model.addAttribute("showCard",discount);
        return "1111111Test_shop";
    }


    //==================================================================================================================
    //Update Discount (UPDATE)
    //Navigate to update page with details
    @GetMapping(path = "/updateDiscount")
    public ModelAndView updateDiscount(@RequestParam("AddedDiscountID") int discountId, ModelAndView model){
        Discount discount = disService.getDiscount(discountId);
        model.addObject("showDiscountForUpdate",discount);

        model.setViewName("discount-update");
        return model;
    }


    //Update Discount
    @RequestMapping(path = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") int id,
                         @RequestParam("admin_id") int admin_id,
                         @RequestParam("discount") int discount,
                         @RequestParam("teacher_name") String teacher_name,
                         @RequestParam("course") String course,
                         @RequestParam("image") MultipartFile image,
                         @RequestParam("description") String description,
                         @RequestParam("grade") int grade,
                         @RequestParam("title") String title,
                         Model model1) throws IOException {

        Discount discount1 = new Discount(id,admin_id,discount,teacher_name,course,image.getBytes(),description,grade,title);
        disService.updateDiscount(discount1);

        return "redirect:/discounts/showDiscounts";
    }



    /*@RequestMapping(path = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") int id,
                         @RequestParam("admin_id") int admin_id,
                         @RequestParam("discount") int discount,
                         @RequestParam("teacher_name") String teacher_name,
                         @RequestParam("course") String course,
                         @RequestParam("image") MultipartFile image,
                         @RequestParam("description") String description,
                         @RequestParam("grade") int grade,
                         @RequestParam("title") String title,
                         Model model1){


        String photo = null;
        try {
            photo = "data:image/jpg;base64,"+
                    Base64.getEncoder().encodeToString(image.getBytes());
        } catch (
                IOException e) {
            e.printStackTrace();
        }


        Discount discount1 = new Discount(id,admin_id,discount,teacher_name,course,photo,description,grade,title);
        disService.updateDiscount(discount1);

        return "redirect:/discounts/showDiscounts";
    }*/


    //==================================================================================================================
    /*@RequestMapping(path = "/getDiscountCode")
    public String getDiscountCode(@RequestParam("DiscountCodeForModel") int discountId,Model model,Model model2){
        Discount discount = disService.getDiscount(discountId);
        model.addAttribute("showDiscountForUpdate",discount);
        return "AddedDiscounts";
    }*/

}