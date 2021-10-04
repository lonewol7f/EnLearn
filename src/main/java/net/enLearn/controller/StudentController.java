package net.enLearn.controller;

import net.enLearn.entity.Course;
import net.enLearn.entity.Student;
import net.enLearn.helper.Messages;
import net.enLearn.service.*;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @Autowired
    private StudentService studentService;

    @Autowired
    private CourseService courseService;

    @Autowired
    private TeacherService teacherService;


    @GetMapping("")
    public String showStudentProfilePage(Model model) {
        int id = userService.getLoggedUserId();

        Student student = studentService.getStudentById(id);

        model.addAttribute("student", student);

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

    @GetMapping("/enroll")
    public String enrollCourse(@RequestParam("courseId") int courseId, RedirectAttributes redirectAttributes) {

        int studentId = userService.getLoggedUserId();
        Student student = studentService.getStudentById(studentId);

        Course course = courseService.getCourseById(courseId);

        if ((student.getCoins() - course.getPrice()) < 0) {
            redirectAttributes.addFlashAttribute("error", Messages.INSUFFICIENT_BALANCE);
            return "redirect:/shop";
        }

        student.setCoins(student.getCoins() - course.getPrice());
        studentService.updateStudent(student);

        course.getTeacher().setSalary(course.getTeacher().getSalary() + course.getPrice());
        teacherService.updateTeacher(course.getTeacher());

        courseService.enroll(student, course);

        redirectAttributes.addAttribute("courseId", courseId);

        return "redirect:/courses";
    }



}