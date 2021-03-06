package net.enLearn.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
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
    private String prange;

    @Column(name = "description")
    private String descripton;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "advertiser_id")
    private Advertiser advertiser;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinTable(name = "advertisements_approve",
            joinColumns = @JoinColumn(name = "advertisement_id"),
            inverseJoinColumns = @JoinColumn(name = "admin_id"))
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Admin> admins;


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

    public String getPrange() {
        return prange;
    }

    public void setPrange(String prange) {
        this.prange = prange;
    }

    public String getDescripton() {
        return descripton;
    }

    public void setDescription(String descripton) {
        this.descripton = descripton;
    }


}

