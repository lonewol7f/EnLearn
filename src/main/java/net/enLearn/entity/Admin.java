package net.enLearn.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kalana on 05/08/2021
 */

@Entity
@Table(name = "admin")
@PrimaryKeyJoinColumn(name = "id")
public class Admin extends User {

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "admin", cascade = {CascadeType.MERGE, CascadeType.PERSIST,
            CascadeType.DETACH, CascadeType.REFRESH})
    @Fetch(value = FetchMode.SUBSELECT)
    @JsonBackReference
    private List<Event> events;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "admin", cascade = {CascadeType.MERGE, CascadeType.PERSIST,
            CascadeType.DETACH, CascadeType.REFRESH})
    @Fetch(value = FetchMode.SUBSELECT)
    private List<RedeemCode> redeemCodes;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinTable(name = "advertisements_approve",
            joinColumns = @JoinColumn(name = "admin_id"),
            inverseJoinColumns = @JoinColumn(name = "advertisement_id"))
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Advertisement> advertisements;

    public Admin() {
    }

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    @Override
    public List<RedeemCode> getRedeemCodes() {
        return redeemCodes;
    }

    @Override
    public void setRedeemCodes(List<RedeemCode> redeemCodes) {
        this.redeemCodes = redeemCodes;
    }
}
