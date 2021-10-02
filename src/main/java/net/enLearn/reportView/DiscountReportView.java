package net.enLearn.reportView;

import com.lowagie.text.*;
import com.lowagie.text.pdf.PdfWriter;
import net.enLearn.entity.Discount;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class DiscountReportView extends AbstractPdfView {

    @Override
    protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setHeader("Content-Disposition","attachment; filename=\"Available Discounts.pdf\"");

        @SuppressWarnings("Unchecked")
        List<Discount> list = (List<Discount>) model.get("discountList");

        //Create Image object
        Image image = Image.getInstance("D:\\ITP-Project_03\\target\\EnLearn-1.0-SNAPSHOT\\resources\\img\\logo.png");
        image .setAlignment(Image.MIDDLE);
        image.scaleAbsolute(200f, 200f);  // Scale the image to an absolute width and an absolute height
        image.scaleToFit(200f, 400f);   // Scales the image so that it fits a certain width and height
        //Add content to the document using Image object.
        document.add(image);


        //Adding text to pdf file
        Paragraph p = new Paragraph("Available Discounts - Report");
        p.setAlignment(Element.ALIGN_CENTER);
        document.add(p);

        //Table heading
        Table table = new Table(6);
        table.addCell("Discount ID");
        table.addCell("Admin ID");
        table.addCell("Discount");
        table.addCell("Teacher ");
        table.addCell("Course");
        table.addCell("Grade");

        //Adding table data
        for(Discount dis : list){
            table.addCell(String.valueOf(dis.getId()));
            table.addCell(String.valueOf(dis.getAdmin_id()));
            table.addCell(String.valueOf(dis.getDiscount()));
            table.addCell(String.valueOf(dis.getTeacher_name()));
            table.addCell(String.valueOf(dis.getCourse()));
            table.addCell(String.valueOf(dis.getGrade()));
        }

        //Add table to document
        document.add(table);
    }
}
