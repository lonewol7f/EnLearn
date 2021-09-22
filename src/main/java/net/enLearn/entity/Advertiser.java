package net.enLearn.entity;


import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

/**
 * Created by Kalana on 05/08/2021
 */

@Entity
@Table(name = "advertiser")
@PrimaryKeyJoinColumn(name = "id")
public class Advertiser extends User {

    @Column(name="company_name")
    private String cname;

    @Column(name = "email")
    private String email;

    @Column(name = "contact_no")
    private int contact_no;

    @Column(name= "password")
    private String password;

    @Transient
    @Column(name = "image")
    private MultipartFile image;



    public Advertiser(String cname,String email,int contact_no,String password,MultipartFile image){
        this.cname = cname;
        this.email = email;
        this.contact_no = contact_no;
        this.password = password;
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

    public String getEmail(){return email;}

    public void setEmail(String email){this.email = email;}

    public int getContact_no(){return contact_no;}

    public void setContact_no(int contact_no){this.contact_no = contact_no;}

    public String getPassword(){return password;}

    public void setPassword(String password) {
        this.password = password;
    }

    public MultipartFile getImage(){return  image;}

    public void setImage(MultipartFile image){this.image = image;}





}