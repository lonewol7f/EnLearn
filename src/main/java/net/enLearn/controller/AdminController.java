package net.enLearn.controller;

import net.enLearn.entity.*;
import net.enLearn.service.*;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Base64;
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

    @Autowired
    private ExpenseService1 expenseService;

    @Autowired
    private AdvertiserService advertiserService;

    @Autowired
    private AdvertisementService advertisementService;
    private Advertiser advertiser;



    @GetMapping("/expenses/list")
    public String showExpensesListPage(Model model) {

        List<Expense> getExpenses = expenseService.getAllExpenses();
        model.addAttribute("expensivedata", getExpenses);
        return "Confirm-expenses";

    }
    @RequestMapping(path = "add/expenses", method = RequestMethod.POST)
    public String AddExpenses(@ModelAttribute("expenses_data") Expense expense,
                              @RequestParam("file_image")MultipartFile multipartFile,
                              @RequestParam("expensesIdhidden") int eventId){

        if(eventId != -1){


            expense.setId(eventId);
        }

        try {
            String filename = String.valueOf(multipartFile.getOriginalFilename());
            expense.setFilename(filename);
            expense.setImage_path("data:image/jpg;base64,"+Base64.getEncoder().encodeToString(multipartFile.getBytes()));
            expenseService.saveOrUpdate(expense);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/admins/expenses/list";

    }

    @GetMapping("/expenses/update")
    public String showExpensesUpdateForm(@RequestParam("expensesId") int eventId, Model model) {
        Expense expense = expenseService.getExpenseById(eventId);

        model.addAttribute("expensesu", expense);

        return "Add-expenses";
    }

    @GetMapping("/expenses/delete")
    public String deleteExpenses(@RequestParam("expensesId") int id,Model model) {

        expenseService.deleteExpense(id);

        return "redirect:/admins/expenses/list";
    }




    @GetMapping("/confirm-advertisement")
    public String showAdvertiserConfirmPage() {
        return "Advertisement-Confirm";
    }

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

    //get uploaded advertisements from db to advertisement confirm page
    @RequestMapping("/showAdvertisements")
    public String showAdvertisement(Model model){

        int advertiser_id = 32;


        //To retrieve all the data in the table - advertisement
        List<Advertisement> displayallAdvertisements = advertisementService.getAllAdvertisements(advertiser_id);
        model.addAttribute("allAdvertisements",displayallAdvertisements);

        //List<Advertiser> displayallAdvertisers = advertiserService.getAllAdvertisers();
        Advertiser displayallAdvertisers = advertiserService.getAdvertiserById(advertiser_id);
        model.addAttribute("allAdvertisers",displayallAdvertisers);

        return "Advertisement-Confirm";
    }

    @GetMapping(path = "/confirm")
    public String typeUploadPage(Model model) {
        model.addAttribute("advertisementId", "");
        model.addAttribute("adminId", "-1");
        model.addAttribute("type", "");

        return "Advertisement-Confirm";
    }

    @GetMapping(path = "/confirmAdvertisement")
    public String typeConfirm(@RequestParam("type") int Advertisement_Id) {

        Advertisement ad = advertisementService.getAdvertisementId(Advertisement_Id);
        String type = "Confirmed";
        AdvertisementApprove advertisementApprove = new AdvertisementApprove(ad.getId(),type,2);
        //AdvertisementApprove advertisementApprove = new AdvertisementApprove(id, type, admin_id);
        /*if (admin_id != -1) {
            advertisementApprove.setAdmin_id(admin_id);
        }*/

        adminService.saveType(advertisementApprove);
        //advertisementService.setCurrentsesion(advertisement.getId());



        return "redirect:/admins/confirm";


    }


}