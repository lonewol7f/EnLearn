package net.enLearn.controller;

import net.enLearn.entity.RedeemCode;
import net.enLearn.service.RedeemCodeService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Kalana on 21/07/2021
 */

@Controller
@RequestMapping("/admins")
public class AdminController {

    @Autowired
    private Logger logger;

    @Autowired
    private RedeemCodeService redeemCodeService;

    @GetMapping("")
    public String showAdminPanel() {
        return "admin-panel";
    }

    @GetMapping("/admin-report")
    public String showAdminReportPanel() {
        return "admin-report-page";
    }

    @PostMapping("/save-coupon")
    public String saveCoupon(@ModelAttribute("coupon")RedeemCode code) {

        redeemCodeService.saveCode(code);

        return "redirect:/test-lang";  // TODO: edit this redirect to correct mapping
    }

    @PostMapping("/search-coupon")
    public String searchCoupon(@ModelAttribute("coupon") String coupon) {
        redeemCodeService.getCodeByCoupon(coupon);

        return "redirect:/test-lang";  // TODO: edit this redirect to correct mapping
    }

    @GetMapping("/remove-used-coupons")
    public String removeUsedCoupon() {
        redeemCodeService.deleteUsedCodes();

        return "redirect:/test-lang";  // TODO: edit this redirect to correct mapping
    }

}
