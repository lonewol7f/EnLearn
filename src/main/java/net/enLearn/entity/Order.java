package net.enLearn.entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Kalana on 25/08/2021
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
    private Date boughtOn;


//    private RedeemCode code;

}
