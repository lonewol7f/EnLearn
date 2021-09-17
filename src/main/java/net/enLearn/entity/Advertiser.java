package net.enLearn.entity;


import javax.persistence.*;

/**
 * Created by Kalana on 05/08/2021
 */

@Entity
@Table(name = "advertiser")
@PrimaryKeyJoinColumn(name = "id")
public class Advertiser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "company_name")
    private String company_name;

    @Column(name = "password")
    private String password = "";

    @Column(name = "email")
    private String email;

    @Column(name = "contact_no")
    private String contact_number;


    @Column(name = "image")
    private String image;

    public Advertiser() {
    } //constructor

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}

