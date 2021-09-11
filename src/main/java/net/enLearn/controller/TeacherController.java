

package net.enLearn.controller;

import net.enLearn.entity.Event;
import net.enLearn.service.EventService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Kalana on 21/07/2021
 */
@Controller
@RequestMapping("/teachers")
public class TeacherController {
    @Autowired
    private Logger logger;

    @Autowired
    private EventService eventService;

    @GetMapping("")
    public String showTeacherProfilePage() {
        return "profile-page-teacher";
    }

    @GetMapping("/register")
    public String showTeacherRegisterPage() {
        return "register-teacher";
    }

    @GetMapping("/Teacher-confirm")
    public String showTeacherConfirm() {
        return "Teacher-confirm";
    }

    @GetMapping("/notifications")
    public String showNotificationPage(Model model) {
        List<Event> events = eventService.getEventList();
        model.addAttribute("events", events);

        return "notification-view";
    }

    @GetMapping("/marks-and-access")
    public String showMarksAndAccessPage() {
        return "marks-and-access";
    }

    @GetMapping("/add-free-quiz")
    public String showQuizAnswerSubmissionLinkPage() {
        return "add-free-quiz";
    }

    @GetMapping("/free-quiz-links")
    public String showFreeQuizLinksPage() {
        return "free-quiz-links";
    }

    @GetMapping("/Teacher-Income_report")
    public String showTeacherIncomeReportPage() {
        return "Teacher-Income-Report";
    }

}

