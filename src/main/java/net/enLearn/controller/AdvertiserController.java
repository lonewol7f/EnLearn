
package net.enLearn.controller;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import net.enLearn.service.AdvertisementService;
import net.enLearn.service.AdvertiserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by Kalana on 21/07/2021
 */


@Controller
@RequestMapping("/advertisers")
public class AdvertiserController {


   /* @Autowired
    private Logger logger;


    @Autowired
    private AdvertisementService advertisementService;

    @GetMapping("")
    public String showAdvertiserProfilePage() {

        return "profile-page-advertiser";
    }

    @GetMapping("/register")
    public String showAdvertiserRegisterPage(Model model) {
        Advertiser advertiser = new Advertiser();
        model.addAttribute("advertiser", advertiser);

        Advertisement advertisement = new Advertisement();
        model.addAttribute("advertisement", advertisement);

        return "register-advertiser";
    }

    /*@PostMapping("/save")
    public String saveAdvertiserRegisterPage(@ModelAttribute("advertiser") Advertiser advertiser) {
        advertiserService.saveOrUpdate(advertiser);

        return "redirect:/advertisers";
    }
    @PostMapping("/save")
    public String saveAdvertiserRegisterPage(@ModelAttribute("advertiser") Advertisement advertisement) {
        advertisementService.saveOrUpdate(advertisement);
        return "redirect:/advertisers";

    }*/


    //@Autowired
    // private AdvertisementService advertisement;

    @Autowired
    private AdvertiserService advertiserService;

    @Autowired
    private AdvertisementService advertisementService;

    @RequestMapping("/register")
    public String showAdvertiserRegisterPage() {


        // Advertisement advertisement = new Advertisement();
        //model.addAttribute("advertisement", advertisement);

        return "register-advertiser";
    }

    @GetMapping("/upload")
    public String showAdvertisementUploadPage() {
        return "upload-advertisement";
    }

    @GetMapping("")
    public String showAdvertiserProfilePage() {

        return "profile-page-advertiser";
    }


    @RequestMapping(path = "/custom-action-url", method = RequestMethod.POST)
    public String processAdvertiserForm(@RequestParam("name") String name,
                                        @RequestParam("email") String email,
                                        @RequestParam("phone") int phone,
                                        @RequestParam("password") String password,
                                        @RequestParam("image") MultipartFile image) {

        // @RequestParam("title") String title,
        // @RequestParam("package") String Package,
        //@RequestParam("description") String description,
        //@RequestParam("image") MultipartFile image)


        //User userObj;
        //Advertisement advertisementObj;


        //userObj = new User();
        ///advertiserObj = new Advertiser(name);
        //  advertisementObj = new Advertisement(title,image,description,Package);
        //advertisement.saveOrUpdate(advertisementObj);

        Advertiser advertiserObj;

        advertiserObj = new Advertiser(name, email, phone, password, image);
        advertiserService.saveOrUpdate(advertiserObj);
        return "register-advertiser";
    }

    @RequestMapping(path = "/upload", method = RequestMethod.POST)
    public String processAdvertisementForm(@RequestParam("title") String title,
                                           @RequestParam("Package") String Package,
                                           @RequestParam("description") String description,
                                           @RequestParam("image") MultipartFile image) {


        Advertisement advertisementObj;
        advertisementObj = new Advertisement(title, Package, description, image);
        advertisementService.saveOrUpdate(advertisementObj);


        return "upload-advertisement";
    }

}