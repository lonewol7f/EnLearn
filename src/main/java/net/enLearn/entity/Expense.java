package net.enLearn.entity;

import javax.persistence.*;

/**
 * Created by pahasara on 05/08/2021
 */

@Entity
@Table(name = "expenditure")
@PrimaryKeyJoinColumn(name = "id")
public class Expense {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "price")
    private String price;

    @Column(name = "description")
    private String description;

    @Column(name = "image")
    private String image_path;

    //    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE,
//            CascadeType.DETACH, CascadeType.REFRESH})
//    @JoinColumn(name = "admin_id")
//    @JsonManagedReference
//    private Admin admin;
//    @Column(name = "admin_id")
    // assing to data to data table
    private int admin_id;

    public Expense(int admin_id,String image_path,String description,String price){
        this.admin_id = admin_id;
        this.description = description;
        this.image_path = image_path;
        this.price = price;
    }

    public Expense(){};

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage_path() {
        return image_path;
    }

    public void setImage_path(String image_path) {
        this.image_path = image_path;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }
}
