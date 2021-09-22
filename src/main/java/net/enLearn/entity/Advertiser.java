package net.enLearn.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 * Created by Kalana on 05/08/2021
 */

@Entity
@Table(name = "advertiser")
@PrimaryKeyJoinColumn(name = "id")
public class Advertiser extends User {

    @Column(name="company_name")
    private String cname;

    @Column(name = "contact_no")
    private String contact_no;

    @Column(name = "image")
    private String image;


    public Advertiser(String first_name, String last_name, String email,
                      String password, String DOB, int grade, String district,
                      String Address, String cname, String contact_no,
                      String image, String gender) {
        super(first_name, email,last_name, password, DOB, grade,
                district, Address,image, gender);
        this.cname = cname;
        this.contact_no = contact_no;
        this.image = image;
    }

    public Advertiser(String cname, String email, String contact_no,
                      String password, String image){
        this.cname = cname;
        super.setEmail(email);
        this.contact_no = contact_no;
        super.setPassword(password);
        this.image = image;

    }

    public Advertiser() {

    }


    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getEmail(){return super.getEmail();}

    public void setEmail(String email){super.setEmail(email);}

    public String getContact_no(){return contact_no;}

    public void setContact_no(String contact_no){this.contact_no = contact_no;}

    public String getPassword(){return super.getPassword();}

    public void setPassword(String password) {
        super.setPassword(password);
    }

//    public MultipartFile getImage(){
//        return   {
//        }image;
//    }

    public void setImage(String image){
        this.image = image;
    }


    public String getImage() {
        return image;
    }
}