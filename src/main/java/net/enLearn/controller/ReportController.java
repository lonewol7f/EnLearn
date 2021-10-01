package net.enLearn.controller;

import net.enLearn.entity.Event;
import net.enLearn.service.EventService;
import net.enLearn.service.RedeemCodeService;
import net.enLearn.service.TeacherService;
import net.enLearn.service.UserService;
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

import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;

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

    // @GetMapping("/comment-analysis")
    // public ResponseEntity<byte[]> generateCommentAnalyzeReport() throws Exception, JRException {
    //
    //     List list = teacherService.getCommentCountForCourses(userService.getLoggedUserId());
    //
    //     Resource resource1 = new ClassPathResource("reports/comment-report-part-1.jrxml");
    //     File file1 = resource1.getFile();
    //
    //     JRBeanCollectionDataSource dataSource1 = new JRBeanCollectionDataSource(teacherService.getCommentCountForCourses(userService.getLoggedUserId()));
    //
    //     JasperReport compileReport1 = JasperCompileManager.compileReport(new FileInputStream(file1));
    //
    //     HashMap<String, Object> map1 = new HashMap<String, Object>();
    //     map1.put("max")
    //
    //     JasperPrint report1 = JasperFillManager.fillReport(compileReport1, map1, dataSource1);
    //
    //     byte[] data = JasperExportManager.exportReportToPdf(report1);
    //
    //
    // }


}
