package net.enLearn.controller;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import net.enLearn.service.AdvertisementService;
import net.enLearn.service.AdvertiserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by thilini on 21/07/2021
 */


@Controller
@RequestMapping("/advertisers")
public class AdvertiserController {

    @Autowired
    private Logger logger;

    @Autowired
    private AdvertiserService advertiserService;

    @Autowired
    private AdvertisementService advertisementService;

    //show profile to advertiser
    @GetMapping("")
    public String showAdvertiserProfilePage(Model model) {
        if (advertiserService.getCurrentAdvertiserId() != -1) {
            Advertiser advertiser = advertiserService.getCurrentAdvertiserById();
            model.addAttribute("advertiser", advertiser);
            List<Advertisement> list = advertisementService.getAdvertisementListByAdvertiserId();



//            for (int i=0; i<list.size(); i++){
//                String d = list.get(i).getDate_time(); //YYYY.MM.DD hh.mm.ss
//                Date date = new Date();
//
//
//            }


            model.addAttribute("advertisements", list);
            return "profile-page-advertiser";

        }else {
            return "redirect:/advertisers/register";
        }
    }
    //    @PostMapping("")
//    public String showAdvertiserProfilePage(Model model) {
//        Advertiser advertiser = advertiserService.getCurrentAdvertiserById();
//        model.addAttribute("advertiser", advertiser);
//        List<Advertisement> list = advertisementService.getAdvertisementListByAdvertiserId();
//        model.addAttribute("advertisements", list);
//
//
//        return "profile-page-advertiser";
//    }
    //show advertiser to register page
    @GetMapping("/register")
    public String showAdvertiserRegisterPage() {
        return "register-advertiser";
    }



    //add advertisement
    @PostMapping("/add")
    public String addAdvertisement(Model model){
        model.addAttribute("edit",false);
        return "add-advertisment";
    }

    //advertisement update function
    @GetMapping("/update")
    public String updateAdvertisement(Model model){
        List<Advertisement> advertisement =
                advertisementService.getAdvertisementListByAdvertiserId();

        model.addAttribute("advertisement",advertisement);
        model.addAttribute("edit",true);

        return "add-advertisment";
    }

    //advertisement delete function
    @GetMapping("/delete")
    public String deleteAdvertisement(@RequestParam("advertisementId") int id){
        Advertisement advertisement =
                advertisementService.getAdvertisementById(id);
        advertisementService.delete(advertisement);

        return "redirect:/advertisers";
    }

    //advertisement details save
    @PostMapping("/save")
    public String saveAdvertisement
    (@ModelAttribute("advertisement") Advertisement advertisement){
        advertisement.advertiser = advertiserService.getCurrentAdvertiserById();

        advertisementService.saveOrUpdate(advertisement);
        return "redirect:/advertisers";
    }

    //advertiser details save
    @PostMapping("/save-details")
    public String saveAdvertiser
    (@ModelAttribute("advertiser") Advertiser advertiser){
        advertiserService.saveOrUpdate(advertiser);

        return "redirect:/advertisers";
    }

//    @GetMapping("/save-profile")
//    public String saveAdvertiserProfile(){
//
//
//
//        return "add-advertisement";
//    }




    /*
    package net.enLearn.service;

import net.enLearn.entity.Advertiser;


public interface AdvertiserService {
    void saveOrUpdate(Advertiser advertiser);
    Advertiser getAdvertiserById(int id);
}

     */




}