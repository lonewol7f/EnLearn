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

    @Column(name = "name")
    private String name;

    @Column(name = "filename")
    private String filename;

    //    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE,
//            CascadeType.DETACH, CascadeType.REFRESH})
//    @JoinColumn(name = "admin_id")
//    @JsonManagedReference
//    private Admin admin;
//    @Column(name = "admin_id")
    // assing to data to data table
    private int admin_id;

    public Expense(int id, String price, String description, String image_path, String name, String filename, int admin_id) {
        this.id = id;
        this.price = price;
        this.description = description;
        this.image_path = image_path;
        this.name = name;
        this.filename = filename;
        this.admin_id = admin_id;
    }

    public Expense() {

    }


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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }
}
