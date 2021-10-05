

package net.enLearn.controller;

import net.enLearn.entity.Course;
import net.enLearn.entity.RecordedVideo;
import net.enLearn.entity.Student;
import net.enLearn.entity.ZoomClass;
import net.enLearn.service.*;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
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
    private RecordedVideoService recordedVideoService;

    @Autowired
    private UserService userService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private Logger logger;

    @GetMapping("")
    public String showCoursePage(@RequestParam("courseId") int id, Model model,
                                 SecurityContextHolderAwareRequestWrapper request) {
        List<Course> courseList = courseService.getCourseList();
        List<ZoomClass> zoomClassList = zoomClassService.getZoomClassListByCourseId(id);
        List<RecordedVideo> videoList = recordedVideoService.getVideoListByCourseId(id);
        Course course = courseService.getCourseById(id);

        int userId = userService.getLoggedUserId();
        boolean owned = false;
        if (userId != 0 && request.isUserInRole("ROLE_STUDENT")) {
            Student student = studentService.getStudentById(userId);
            for (Course c : student.getCourseList()) {
                if (c.getId() == course.getId()){
                    owned = true;
                    break;
                }
            }
        }

        model.addAttribute("course", course);
        model.addAttribute("zoomClassList", zoomClassList);
        model.addAttribute("videoList", videoList);
        model.addAttribute("courseId", id);
        model.addAttribute("courseList", courseList);
        model.addAttribute("owned", owned);
        return "course-page";
    }

    @GetMapping("/add-courses")
    public String showAddCoursePage(@RequestParam("courseId") int id, Model model) {
        List<ZoomClass> zoomClassList = zoomClassService.getZoomClassListByCourseId(id);
        List<RecordedVideo> videoList = recordedVideoService.getVideoListByCourseId(id);
        model.addAttribute("zoomClassList", zoomClassList);
        model.addAttribute("videoList", videoList);
        model.addAttribute("courseId", id);
        return "add-course";
    }

    @GetMapping("/videos")
    public String showVideoPage(@RequestParam("videoId") int id, Model model) {
        RecordedVideo recordedVideo = recordedVideoService.getVideoById(id);
        model.addAttribute("recordedVideo",recordedVideo);
        model.addAttribute("userId", userService.getLoggedUserId());
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
        redirectAttributes.addAttribute("type", "Zoom Class");
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
        redirectAttribute.addAttribute("type", "Zoom Class");
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
    public String saveVideo(@ModelAttribute("recordedVideo") RecordedVideo recordedVideo, @RequestParam("courseId") int courseId, RedirectAttributes redirectAttributes) {
        Course course = courseService.getCourseById(courseId);
        recordedVideo.setCourse(course);
        recordedVideoService.saveOrUpdate(recordedVideo);
        redirectAttributes.addAttribute("courseId", courseId);
        redirectAttributes.addAttribute("type", "Recorded Video");
        return "redirect:/courses/add-courses";
    }

    @GetMapping("/add-video")
    public String showAddVideoPage(@RequestParam("courseId") int courseId, Model model) {
        RecordedVideo recordedVideo = new RecordedVideo();
        Course course = courseService.getCourseById(courseId);
        recordedVideo.setCourse(course);
        model.addAttribute("recordedVideo", recordedVideo);
        return "add-video";
    }

    //Recorded video Delete
    @GetMapping("/video/delete")
    public String deleteVideo(@RequestParam("recordedVideoId") int id, Model model, RedirectAttributes redirectAttribute) {
        RecordedVideo recordedVideo = recordedVideoService.getVideoById(id);
        Course course = recordedVideo.getCourse();
        redirectAttribute.addAttribute("courseId", course.getId());
        redirectAttribute.addAttribute("type", "Recorded Video");
        recordedVideoService.deleteVideo(id);
        return "redirect:/courses/add-courses";
    }

    //Recorded video Edit
    @GetMapping("/video/update")
    public String showVideoUpdateForm(@RequestParam("recordedVideoId") int id, Model model) {
        RecordedVideo recordedVideo = recordedVideoService.getVideoById(id);
        model.addAttribute("recordedVideo", recordedVideo);
        return "add-video";
    }

}

