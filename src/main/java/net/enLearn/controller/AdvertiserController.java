
package net.enLearn.controller;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import net.enLearn.service.AdvertisementService;
import net.enLearn.service.AdvertiserService;
import net.enLearn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Base64;
import java.util.List;

/**
 * Created by Kalana on 21/07/2021
 */


@Controller
@RequestMapping("/advertisers")
public class AdvertiserController {

    static int MAX_IMAGE_SIZE = 10485760;



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

    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    public String showAdvertiserRegisterPage(Model model) {


        model.addAttribute("advertiserId", "-1");
        model.addAttribute("advertiserCN", "");
        model.addAttribute("advertiserEmail", "");
        model.addAttribute("advertiserContact", "");
        model.addAttribute("advertiserName", "");
        model.addAttribute("advertiserImg", "");


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
        Advertiser advertiser = advertiserService.
                getAdvertiserById(userService.getCurrentsesion());

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
                                        @RequestParam("phone") String phone,
                                        @RequestParam("password") String password,
                                        @RequestParam("image") MultipartFile photo,
                                        @RequestParam("advertiserId") int id,
                                        Model model,
                                        HttpServletRequest request
    ) {
        if (photo.getSize() > MAX_IMAGE_SIZE) {
            model.addAttribute("message", "Image too large!");
            if (id == -1) return "redirect:/advertisers/register";
            return "redirect:/advertisers/update-profile";
        }

        if (!advertiserService.newEmail(email) && id == -1) {
            request.setAttribute("message", "Email already exist!");
            return "redirect:/advertisers/register";
        }

        model.addAttribute("message", "");
        String image = null;
        try {
            image = "data:image/jpg;base64," + Base64.getEncoder().encodeToString(photo.getBytes());
        } catch (IOException ignored) {

        }

        Advertiser advertiser =
                new Advertiser(null, null, email, password, null,
                        0, null, null, name, phone, image, null);

        if (id != -1) {
            advertiser.setId(id);
        }

        advertiserService.saveOrUpdate(advertiser);
        userService.setCurrentsesion(advertiser.getId());
        return "redirect:/advertisers";
    }

    @RequestMapping(path = "/upload", method = RequestMethod.POST)
    public String processAdvertisementForm(@RequestParam("title") String title,
                                           @RequestParam("package") String Package,
                                           @RequestParam("description") String description,
                                           @RequestParam("image") MultipartFile photo,
                                           @RequestParam("advertisementId") int id
    ) {

        if (photo.getSize() > MAX_IMAGE_SIZE) {
            return "redirect:/advertisers/";
        }

        //TODO Advertiser get
        Advertiser advertiser = advertiserService.getAdvertiserById(userService.getCurrentsesion());

        String image = null;
        try {
            image = "data:image/jpg;base64," + Base64.getEncoder().encodeToString(photo.getBytes());
        } catch (IOException ignored) {

        }


        Advertisement advertisementObj;
        advertisementObj = new Advertisement(title, Package, description, image, advertiser);
        if (id != -1) {
            advertisementObj.setId(id);
        }

        advertisementService.saveOrUpdate(advertisementObj);


        return "redirect:/advertisers";
    }


    @GetMapping("/update")
    public String updateAdvertisement(
            @RequestParam("advertisementId") int id, Model model) {
        Advertisement advertisement = advertisementService.getAdvertisementId(id);
        model.addAttribute("advertisementId", advertisement.getId());
        model.addAttribute("advertisementDes", advertisement.getDescription());
        model.addAttribute("advertisementPr", advertisement.getPrice_range());
        model.addAttribute("advertisementTitle", advertisement.getTitle());
        model.addAttribute("advertisementImage", advertisement.getImage());


        return "upload-advertisement";
    }


    @GetMapping("/delete")
    public String deleteAdvertisement(@RequestParam("advertisementId") int id) {
        advertisementService.deleteAdvertisement(id);

        return "redirect:/advertisers";
    }


    @GetMapping("/update-profile")
    public String updateAdvertiser
            (Model model) {
        Advertiser advertiser = advertiserService.getAdvertiserById(userService.getCurrentsesion());
        model.addAttribute("advertiserId", advertiser.getId());
        model.addAttribute("advertiserCN", advertiser.getCname());
        model.addAttribute("advertiserEmail", advertiser.getEmail());
        model.addAttribute("advertiserContact", advertiser.getContact_no());
        model.addAttribute("advertiserName", advertiser.getFirstName());
        model.addAttribute("advertiserImg", advertiser.getImage());

        return "register-advertiser";
    }

    //delete profile
    @GetMapping("/delete-profile")
    public String deleteAdvertiser(@RequestParam("advertiserId") int id) {
        advertiserService.deleteAdvertiser(id);
        return "redirect:/";
    }


}