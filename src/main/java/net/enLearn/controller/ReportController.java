package net.enLearn.controller;

import net.enLearn.entity.Event;
import net.enLearn.service.*;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Kalana on 13/09/2021
 */

@Controller
@RequestMapping("/reports")
public class ReportController {

    @Autowired
    private EventService eventService;

    @Autowired
    private RedeemCodeService redeemCodeService;

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private UserService userService;

    @Autowired
    private DataSource dataSource;

    @Autowired
    private ZoomClassService zoomClassService;

    @GetMapping("/single-event")
    public ResponseEntity<byte[]> generateSingleEventReport(@RequestParam("eventId") int id) throws Exception, JRException {

        Event event = eventService.getEventById(id);

        Resource resource = new ClassPathResource("reports/single-event.jrxml");
        File file = resource.getFile();

        JasperReport compileReport = JasperCompileManager.compileReport(new FileInputStream(file));

        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("topic", event.getTopic());
        map.put("message", event.getMessage());
        map.put("date", event.getDate());
        map.put("time", event.getTime());

        JasperPrint report = JasperFillManager.fillReport(compileReport,map, new JREmptyDataSource());

        byte[] data = JasperExportManager.exportReportToPdf(report);

        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.CONTENT_DISPOSITION, "inline;filename=event.pdf");

        return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF).body(data);

    }

    @GetMapping("/available-codes")
    public ResponseEntity<byte[]> generateAvailableCouponsReport() throws Exception, JRException {

        Resource resource = new ClassPathResource("reports/available-codes.jrxml");
        File file = resource.getFile();

        JRBeanCollectionDataSource jrBeanCollectionDataSource = new JRBeanCollectionDataSource(redeemCodeService.getNonUsedCodes());

        JasperReport compileReport = JasperCompileManager.compileReport(new FileInputStream(file));

        HashMap<String, Object> map = new HashMap<String, Object>();

        JasperPrint report = JasperFillManager.fillReport(compileReport,map, jrBeanCollectionDataSource);

        byte[] data = JasperExportManager.exportReportToPdf(report);

        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.CONTENT_DISPOSITION, "inline;filename=available-codes.pdf");

        return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF).body(data);


    }


    @GetMapping("/comment-analysis")
    public ResponseEntity<byte[]> generateCommentAnalyzeReport() throws Exception, JRException {


        String pieDes = null;
        int userId = userService.getLoggedUserId();
        List list = teacherService.getCommentCountForCourses(userId);
        if (list.size() > 0) {
            Object[] max = (Object[]) list.get(0);
            String maxName = (String) max[1];

            Object[] min = (Object[]) list.get(list.size() - 1);
            String minName = (String) min[1];
            StringBuilder sb = new StringBuilder();
            sb.append("      The pie chart above will give you a broad idea of how comments in your courses will behave on a more detailed level. The ");
            sb.append(maxName);
            sb.append(" course, on the other hand, appears to be the most popular of your courses, according to the comment analysis. In addition, based to the parameters outlined above, the ");
            sb.append(minName);
            sb.append(" course garnered the lowest percentage of comments from your students across all of your courses. ");
            sb.append(System.lineSeparator());
            sb.append("    In summary, our system suggests focusing more on the ");
            sb.append(minName);
            sb.append(" course and improving it.");
            sb.append(System.lineSeparator());

            pieDes = sb.toString();
            System.out.println(pieDes);

        }

        Resource resource1 = new ClassPathResource("reports/comment-report-1.jrxml");
        File file1 = resource1.getFile();

        JasperReport compileReport1 = JasperCompileManager.compileReport(new FileInputStream(file1));

        HashMap<String, Object> map1 = new HashMap<String, Object>();
        map1.put("teacherId", userId);
        map1.put("description", pieDes);


        JasperPrint report1 = JasperFillManager.fillReport(compileReport1, map1, dataSource.getConnection());

        byte[] data = JasperExportManager.exportReportToPdf(report1);

        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.CONTENT_DISPOSITION, "inline;filename=comment-analysis.pdf");

        return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF).body(data);
    }


    @GetMapping("/zoom-class-report")
    public ResponseEntity<byte[]> generateZoomClassReport(@RequestParam("courseId") int courseId) throws Exception, JRException {

        Resource resource = new ClassPathResource("reports/zoom-classes.jrxml");
        File file = resource.getFile();

        JasperReport compileReport = JasperCompileManager.compileReport(new FileInputStream(file));

        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("courseId", courseId);

        JasperPrint report = JasperFillManager.fillReport(compileReport,map, dataSource.getConnection());

        byte[] data = JasperExportManager.exportReportToPdf(report);

        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.CONTENT_DISPOSITION, "inline;filename=zoom-class-timetable.pdf");

        return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF).body(data);

    }

    @GetMapping("/student-marks")
    public ResponseEntity<byte[]> generateQuizClassReport() throws Exception, JRException {

        Resource resource = new ClassPathResource("reports/students-marks.jrxml");
        File file = resource.getFile();

        JasperReport compileReport = JasperCompileManager.compileReport(new FileInputStream(file));

        HashMap<String, Object> map = new HashMap<String, Object>();

        JasperPrint report = JasperFillManager.fillReport(compileReport,map, dataSource.getConnection());

        byte[] data = JasperExportManager.exportReportToPdf(report);

        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.CONTENT_DISPOSITION, "inline;filename=marks-report.pdf");

        return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF).body(data);

    }

}
