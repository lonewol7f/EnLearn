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

    @OneToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE,
            CascadeType.DETACH, CascadeType.REFRESH})
    // @Fetch(value = FetchMode.JOIN)
    @JoinColumn(name = "coupon_id")
    private RedeemCode code;

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

    public RedeemCode getCode() {
        return code;
    }

    public void setCode(RedeemCode code) {
        this.code = code;
    }
}
