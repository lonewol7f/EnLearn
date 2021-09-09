package net.enLearn.entity;


import javax.persistence.*;

/**
 * Created by Kalana on 05/08/2021
 */

@Entity
@Table(name = "advertiser")
@PrimaryKeyJoinColumn(name = "id")

public class Advertiser extends User {
}