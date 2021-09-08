package net.enLearn.controller;

import net.enLearn.entity.Admin;
import net.enLearn.entity.Event;
import net.enLearn.entity.RedeemCode;
import net.enLearn.service.AdminService;
import net.enLearn.service.EventService;
import net.enLearn.service.RedeemCodeService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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

    @Autowired
    private EventService eventService;

    @Autowired
    private AdminService adminService;

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

    @GetMapping("/codes")
    public String showAddCodePage(Model model) {
        RedeemCode code = new RedeemCode();

        List<RedeemCode> usedCodeList = redeemCodeService.getUsedCodes();
        List<RedeemCode> codeList = redeemCodeService.listCodes();

        model.addAttribute("code", code);
        model.addAttribute("usedCodes", usedCodeList);
        model.addAttribute("codeList", codeList);
        return "add-code";
    }

    @GetMapping("/codes/delete")
    public String deleteCoupon(@RequestParam("codeId") int codeId) {
        redeemCodeService.deleteCouponById(codeId);

        return "redirect:/admins/codes";
    }

    @PostMapping("/events/save")
    public String saveEvent(@ModelAttribute("event") Event event, @RequestParam("adminId") int adminId) {

        Admin admin = adminService.getAdminById(adminId);
        event.setAdmin(admin);

        eventService.saveOrUpdateEvent(event);

        return "redirect:/admins/events/list";
    }

    @GetMapping("/events/list")
    public String showEventListPage(Model model) {

        List<Event> events = eventService.getEventList();

        model.addAttribute("eventList", events);

        return "event-list";
    }

    @GetMapping("/events/delete")
    public String deleteEvent(@RequestParam("eventId") int id) {

        eventService.deleteEvent(id);

        return "redirect:/admins/events/list";
    }

    @GetMapping("/events/add")
    public String showAddEventPage(Model model) {
        Event event = new Event();
        model.addAttribute("event", event);

        return "event-form";
    }

    @GetMapping("/events/update")
    public String showEventUpdateForm(@RequestParam("eventId") int eventId, Model model) {
        Event event = eventService.getEventById(eventId);

        model.addAttribute("event", event);

        return "event-form";
    }

}
