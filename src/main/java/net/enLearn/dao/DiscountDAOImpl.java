package net.enLearn.dao;

import net.enLearn.entity.Discount;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

public class DiscountDAOImpl implements DiscountDAO{

    private JdbcTemplate jdbcTemplate;

    public DiscountDAOImpl(DataSource datasource) {
        this.jdbcTemplate = new JdbcTemplate(datasource);
    }

    //Save Discount
    //CREATE
    public int SavaDiscount(Discount d){
        String sql = "INSERT INTO discount(admin_id,discount,teacher_name,course,image,description,grade,title) VALUES(?,?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql,d.getAdminIDId(),d.getAmount(),d.getTeacher(),d.getSub(),d.getImage(),d.getDescription(),d.getGrade(),d.getLable());
    }


    //Get Discount method
    //READ
    public int GetDiscount(Discount discount){
        return 0;
    }

    //Update Discount
    //UPDATE
    public int UpdateDiscount(Discount discount){
        return 0;
    }

    //Delete Discount
    //DELETE
    public int DeleteDiscount(Discount discount){
        return 0;
    }
}
