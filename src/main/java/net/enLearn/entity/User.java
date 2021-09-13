package net.enLearn.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

@Entity
@Table(name = "user")
@Inheritance(strategy = InheritanceType.JOINED)
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "first_name")
    private String firstName;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "user", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonBackReference
    private List<Comment> comments;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "user", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonBackReference
    private List<Reply> replies;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user", cascade = {CascadeType.MERGE, CascadeType.PERSIST,
            CascadeType.DETACH, CascadeType.REFRESH})
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonBackReference
    private List<RedeemCode> redeemCodes;

    @Column(name = "email")
    private String email;

    @Column(name = "last_name")
    private String lastname;

    @Column(name = "password")
    private String password;

    @Column(name = "dob")
    private int DOB;

    @Column(name = "grade")
    private int grade;

    @Column(name = "district")
    private String district;

    @Column(name = "address")
    private String Address;


    //default Constructor
    public User() {
    }


    //Constructor
    public User(String first_name,String last_name,String email,String password,int DOB,int grade,String district,String Address){
        this.firstName =first_name;
        this.lastname = last_name;
        this.email = email;
        this.password = password;
        this.DOB = DOB;
        this.grade = grade;
        this.district= district;
        this.Address = Address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public List<Reply> getReplies() {
        return replies;
    }

    public void setReplies(List<Reply> replies) {
        this.replies = replies;
    }

    public List<RedeemCode> getRedeemCodes() {
        return redeemCodes;
    }

    public void setRedeemCodes(List<RedeemCode> redeemCodes) {
        this.redeemCodes = redeemCodes;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail (String email) {
        this.email = email;
    }
}
