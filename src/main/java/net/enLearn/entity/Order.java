package net.enLearn.entity;

import javax.persistence.*;

/**
 * Created by Flashminat0 on 25/08/2021
 */

@Entity
@Table(name = "order")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "payment")
    private int payment;

    @Column(name = "bought_on")
    private String boughtOn;

    @Column(name = "coupon_code")
    private String coupon;

    @Column(name = "user_email")
    private String userEmail;

    public Order() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPayment() {
        return payment;
    }

    public void setPayment(int payment) {
        this.payment = payment;
    }

    public String getBoughtOn() {
        return boughtOn;
    }

    public void setBoughtOn(String boughtOn) {
        this.boughtOn = boughtOn;
    }

    public String getCoupon() {
        return coupon;
    }

    public void setCoupon(String coupon) {
        this.coupon = coupon;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }
}
