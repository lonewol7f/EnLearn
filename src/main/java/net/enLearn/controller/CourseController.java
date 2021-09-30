

package net.enLearn.controller;

import net.enLearn.entity.Course;
import net.enLearn.entity.ZoomClass;
import net.enLearn.service.CourseService;
import net.enLearn.service.ZoomClassService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * Created by Kalana on 20/07/2021
 */

@Controller
@RequestMapping("/courses")
public class CourseController {
    @Autowired
    private CourseService courseService;

    @Autowired
    private ZoomClassService zoomClassService;


    @Autowired
    private Logger logger;

    @GetMapping("")
    public String showCoursePage() {
        return "course-page";
    }

    @GetMapping("/add-courses")
    public String showAddCoursePage(@RequestParam("courseId") int id, Model model) {
        List<ZoomClass> zoomClassList = zoomClassService.getZoomClassListByCourseId(id);
        model.addAttribute("zoomClassList", zoomClassList);
        model.addAttribute("courseId", id);
        return "add-course";
    }

    @GetMapping("/videos")
    public String showVideoPage() {
        return "video-page";
    }

    @GetMapping("/add-videos")
    public String showAddVideoPage() {
        return "add-video";
    }

    @GetMapping("/select-quizzes")
    public String showQuizSelectPage() {
        return "quiz-select-page";
    }

    //Zoom Class
    @PostMapping("/zoomClass/save")
    public String saveZoomClass(@ModelAttribute("zoomClass") ZoomClass zoomClass, @RequestParam("courseId") int courseId, RedirectAttributes redirectAttributes) {
        Course course = courseService.getCourseById(courseId);
        zoomClass.setCourse(course);
        zoomClassService.saveOrUpdate(zoomClass);
        redirectAttributes.addAttribute("courseId", courseId);
        return "redirect:/courses/add-courses";
    }

    @GetMapping("/create-zoom")
    public String showZoomCreatePage(@RequestParam("courseId") int courseId, Model model) {
        ZoomClass zoomClass = new ZoomClass();
        Course course = courseService.getCourseById(courseId);
        zoomClass.setCourse(course);
        model.addAttribute("zoomClass", zoomClass);
        return "zoom-create";
    }

    //zoom Delete
    @GetMapping("/zoomClass/delete")
    public String deleteZoomClass(@RequestParam("zoomClassId") int id, Model model, RedirectAttributes redirectAttribute) {
        ZoomClass zoomClass = zoomClassService.getZoomClassById(id);
        Course course = zoomClass.getCourse();
        redirectAttribute.addAttribute("courseId", course.getId());
        zoomClassService.deleteZoomClass(id);
        return "redirect:/courses/add-courses";
    }

    //zoom Edit
    @GetMapping("/zoomClass/update")
    public String showZoomClassUpdateForm(@RequestParam("zoomClassId") int id, Model model) {
        ZoomClass zoomClass = zoomClassService.getZoomClassById(id);
        model.addAttribute("zoomClass", zoomClass);
        return "zoom-create";
    }


    //Recorded Video
    @PostMapping("/video/save")
    public String saveVideo(@ModelAttribute("zoomClass") ZoomClass zoomClass, @RequestParam("courseId") int courseId, RedirectAttributes redirectAttributes) {
        Course course = courseService.getCourseById(courseId);
        zoomClass.setCourse(course);
        zoomClassService.saveOrUpdate(zoomClass);
        redirectAttributes.addAttribute("courseId", courseId);
        return "redirect:/courses/add-courses";
    }

}

