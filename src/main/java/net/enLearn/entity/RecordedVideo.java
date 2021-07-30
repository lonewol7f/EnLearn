package net.enLearn.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

@Entity
@Table(name = "recorded_video")
public class RecordedVideo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "v_id", cascade = CascadeType.ALL)
    private List<Comment> comments;

    public RecordedVideo() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
