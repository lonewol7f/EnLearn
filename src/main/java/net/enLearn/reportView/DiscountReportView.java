package net.enLearn.reportView;

import com.lowagie.text.Document;
import com.lowagie.text.Table;
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
        response.setHeader("Content-Disposition","attachment; filename=\"user_list.pdf\"");

        @SuppressWarnings("Unchecked")
        List<Discount> list = (List<Discount>) model.get("discountList");

        Table table = new Table(9);
        table.addCell("id");
        table.addCell("admin_id");
        table.addCell("discount");
        table.addCell("teacher_name ");
        table.addCell("course");
        table.addCell("image");
        table.addCell("description");
        table.addCell("grade");
        table.addCell("title");

        for(Discount dis : list){
            table.addCell(String.valueOf(dis.getId()));
            table.addCell(String.valueOf(dis.getAdmin_id()));
            table.addCell(String.valueOf(dis.getDiscount()));
            table.addCell(String.valueOf(dis.getTeacher_name()));
            table.addCell(String.valueOf(dis.getCourse()));
            table.addCell(String.valueOf(dis.getImage()));
            table.addCell(String.valueOf(dis.getDescription()));
            table.addCell(String.valueOf(dis.getGrade()));
            table.addCell(String.valueOf(dis.getTitle()));
        }

        document.add(table);
    }
}
