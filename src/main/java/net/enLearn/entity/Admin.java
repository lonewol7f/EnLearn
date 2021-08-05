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
}
