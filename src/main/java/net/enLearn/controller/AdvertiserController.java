
package net.enLearn.controller;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import net.enLearn.service.AdvertisementService;
import net.enLearn.service.AdvertiserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * Created by Kalana on 21/07/2021
 */


@Controller
@RequestMapping("/advertisers")
public class
AdvertiserController {


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
    public String showAdvertiserRegisterPage(Model model) {


        model.addAttribute("advertiserId", "-1");
        model.addAttribute("advertiserCN", "");
        model.addAttribute("advertisementEmail", "");
        model.addAttribute("advertisementContact", "");
        model.addAttribute("advertisementName", "");

        return "register-advertiser";
    }

    @GetMapping("/upload")
    public String showAdvertisementUploadPage(Model model) {
        model.addAttribute("advertisementId", "-1");
        model.addAttribute("advertisementDes", "");
        model.addAttribute("advertisementPr", "");
        model.addAttribute("advertisementTitle", "");


        return "upload-advertisement";
    }

    @GetMapping("")
    public String showAdvertiserProfilePage(Model model) {
        //TODO Advertiser get
        Advertiser advertiser = advertiserService.getAdvertiserById(4);

        try {
            List<Advertisement> advertisements =
                    advertisementService.getAdvertisementsByAdvertiser(advertiser);
            model.addAttribute("ad_list", advertisements);
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("ad_list", null);
        }
        model.addAttribute("advertiser", advertiser);

        return "profile-page-advertiser";
    }


    @RequestMapping(path = "/custom-action-url", method = RequestMethod.POST)
    public String processAdvertiserForm(@RequestParam("name") String name,
                                        @RequestParam("email") String email,
                                        @RequestParam("phone") int phone,
                                        @RequestParam("password") String password,
                                        @RequestParam("image") MultipartFile image,
                                        @RequestParam("advertiserId") int id
                                        ) {

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

        advertiserObj = new Advertiser(null,null,email,password,"",
                0,null,null,name,phone,image,null);

        if (id!=-1){
            advertiserObj.setId(id);
        }

        advertiserService.saveOrUpdate(advertiserObj);
        return "redirect:/advertisers";
    }

    @RequestMapping(path = "/upload", method = RequestMethod.POST)
    public String processAdvertisementForm(@RequestParam("title") String title,
                                           @RequestParam("package") String Package,
                                           @RequestParam("description") String description,
                                           @RequestParam("image") MultipartFile image,
                                           @RequestParam("advertisementId") int id
    ) {

        //TODO Advertiser get
        Advertiser advertiser = advertiserService.getAdvertiserById(4);

        Advertisement advertisementObj;
        advertisementObj = new Advertisement(title, Package, description, image,advertiser);
        if (id!=-1){
            advertisementObj.setId(id);
        }

        advertisementService.saveOrUpdate(advertisementObj);


        return "redirect:/advertisers";
    }




    @GetMapping("/update")
    public String updateAdvertisement(@RequestParam("advertisementId") int id, Model model){
        Advertisement advertisement = advertisementService.getAdvertisementId(id);
        model.addAttribute("advertisementId", advertisement.getId());
        model.addAttribute("advertisementDes", advertisement.getDescription());
        model.addAttribute("advertisementPr", advertisement.getPrice_range());
        model.addAttribute("advertisementTitle", advertisement.getTitle());

        return "upload-advertisement";
    }


    @GetMapping("/delete")
    public String deleteAdvertisement(@RequestParam("advertisementId") int id){
        advertisementService.deleteAdvertisement(id);

        return "redirect:/advertisers";
    }


    @GetMapping("/update-profile")
    public String updateAdvertiser(@RequestParam("advertiserId") int id, Model model){
        Advertiser advertiser = advertiserService.getAdvertiserById(id);
        model.addAttribute("advertiserId", advertiser.getId());
        model.addAttribute("advertiserCN", advertiser.getContact_no());
        model.addAttribute("advertisementEmail", advertiser.getEmail());
        model.addAttribute("advertisementContact", advertiser.getContact_no());
        model.addAttribute("advertisementName", advertiser.getFirstName());

        return "register-advertiser";
    }


    @GetMapping("/delete-profile")
    public String deleteAdvertiser(@RequestParam("advertiserId") int id){
        advertiserService.deleteAdvertiser(id);
        return "redirect:/";
    }



}