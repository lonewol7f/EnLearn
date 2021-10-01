package net.enLearn.controller;

import net.enLearn.helper.Messages;
import net.enLearn.service.RedeemCodeService;
import net.enLearn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Created by Kalana on 20/07/2021
 */

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    private Logger logger;

    @Autowired
    private RedeemCodeService redeemCodeService;

    @Autowired
    private UserService userService;

    @GetMapping("")
    public String showStudentProfilePage() {
        return "profile-page-student";
    }

    @PostMapping("/redeem")
    public String redeemCoupon(@RequestParam("coupon") String coupon, RedirectAttributes redirectAttributes) {
        if (!redeemCodeService.checkExistingCoupon(coupon)){
            redirectAttributes.addFlashAttribute("error", Messages.CODE_NOT_EXIST);
            return "redirect:/shop";
        }

        if (redeemCodeService.getCodeByCoupon(coupon).isRedeemed()) {
            redirectAttributes.addFlashAttribute("error", Messages.CODE_REDEEMED);
            return "redirect:/shop";
        }

        userService.redeemCode(redeemCodeService.getCodeByCoupon(coupon));
        redirectAttributes.addFlashAttribute("success", Messages.CODE_REDEEMED);

        return "redirect:/shop";
    }

}