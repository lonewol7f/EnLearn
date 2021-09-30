package net.enLearn.entity;


import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.IOException;

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
    private int contact_no;

    @Transient
    @Column(name = "image", length = 1000)
//TODO check    private MultipartFile image;
    private byte[] image;


    public Advertiser(String first_name, String last_name, String email,
                      String password, String DOB, int grade, String district,
                      String Address, String cname, int contact_no,
                      MultipartFile image, String gender) {
        super(first_name, last_name, email, password, DOB, grade,
                district, Address,image.toString(), gender);
        this.cname = cname;
        this.contact_no = contact_no;
        try {
            this.image = image.getBytes();
        } catch (IOException e) {
            this.image = null;
        }
    }

    public Advertiser(String cname, String email, int contact_no,
                      String password, MultipartFile image){
        this.cname = cname;
        super.setEmail(email);
        this.contact_no = contact_no;
        super.setPassword(password);
        try {
            this.image = image.getBytes();
        } catch (IOException e) {
            this.image = null;
        }

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

    public int getContact_no(){return contact_no;}

    public void setContact_no(int contact_no){this.contact_no = contact_no;}

    public String getPassword(){return super.getPassword();}

    public void setPassword(String password) {
        super.setPassword(password);
    }

//    public MultipartFile getImage(){
//        return   {
//        }image;
//    }

    public void setImage(MultipartFile image){
        try {
            this.image = image.getBytes();
        } catch (IOException e) {
            this.image = null;
        }
    }


    public byte[] getImage() {
        return image;
    }
}