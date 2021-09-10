package net.enLearn.dao;

import net.enLearn.entity.Discount;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import javax.sql.DataSource;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DiscountDAOImpl implements DiscountDAO{

    private JdbcTemplate jdbcTemplate;

    public DiscountDAOImpl(DataSource datasource) {
        this.jdbcTemplate = new JdbcTemplate(datasource);
    }

    //Save Discount
    //CREATE
    @Override
    public int SavaDiscount(Discount d){
        String sql = "INSERT INTO discount(admin_id,discount,teacher_name,course,image,description,grade,title) VALUES(?,?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql,d.getAdminIDId(),d.getAmount(),d.getTeacher(),d.getSub(),d.getImage(),d.getDescription(),d.getGrade(),d.getLable());
    }


    //Get Discount method
    //READ
    @Override
    public Discount GetDiscount(Integer id){
        String sql = "SELECT * FROM discount WHERE id="+id;

        ResultSetExtractor<Discount> extractor = new ResultSetExtractor<Discount>() {
            @Override
            public Discount extractData(ResultSet rs)throws SQLException, DataAccessException {
                if(rs.next()) {
                    int admin_id = rs.getInt("admin_id");
                    int discount = rs.getInt("discount");
                    String teacher_name = rs.getString("teacher_name");
                    String course = rs.getString("course");
                    Blob image = jdbcTemplate.queryForObject(sql, new Object[] { id }, Blob.class);
                    String description = rs.getString("description");
                    int grade = rs.getInt("grade");
                    String title = rs.getString("title");

                    return new Discount(admin_id,title,discount,teacher_name,course,grade,description,image);
                }
                return null;
            }
        };
        return jdbcTemplate.query(sql, extractor);
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
