package net.enLearn.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "advertisement")
@PrimaryKeyJoinColumn(name = "id")

public class Advertisement {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;


    @Column(name = "title")
    private String title;

    @Column(name = "price_range")
    private String price_range;

    @Column(name = "description")
    private String description;

    @Column(name = "time")
    private long time;

    @Transient
    @Column(name = "image")
    private MultipartFile image;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "advertiser_id")
    private Advertiser advertiser;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinTable(name = "advertisements_approve",
            joinColumns = @JoinColumn(name = "advertisement_id"),
            inverseJoinColumns = @JoinColumn(name = "admin_id"))
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Admin> admins;

    public Advertisement(){}

    public Advertisement(String title, String price_range, String description, MultipartFile image, Advertiser advertiser) {
        this.title = title;
        this.price_range = price_range;
        this.description = description;
        this.image = image;
        this.advertiser = advertiser;
        this.time = new Date().getTime();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice_range() {
        return price_range;
    }

    public void setPrice_range(String price_range) {
        this.price_range = price_range;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public Advertiser getAdvertiser() {
        return advertiser;
    }

    public void setAdvertiser(Advertiser advertiser) {
        this.advertiser = advertiser;
    }

    public List<Admin> getAdmins() {
        return admins;
    }

    public void setAdmins(List<Admin> admins) {
        this.admins = admins;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public String getRemainingTime(){
        int[] p = {3,8,15,30};

        int m = p[Integer.parseInt(this.price_range)]*24*60;

        long rem = new Date().getTime() - this.time;
        int min = (int) (rem/(60000)) + m;

        if (min<0){
            return "Expired";
        }

        if (min<=60){
            return min+" minutes left";
        }

        if (min<=1440){
            if (min%60 == 0){
                return min/60+" hours left";
            }
            return min/60+" hours and "+min%60+" minutes left";
        }

        int hours = min/60;
        if (hours<=720){
            if (hours%24 == 0){
                return hours/24+" days left";
            }
            return hours/24+" days and "+hours%24+" hours left";
        }

        return "Error";
    }
}

