package net.enLearn.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "user_id", cascade = CascadeType.ALL)
    private List<Comment> comments;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "user_id", cascade = CascadeType.ALL)
    private List<Reply> replies;

    public User() {
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

    public List<Reply> getReplies() {
        return replies;
    }

    public void setReplies(List<Reply> replies) {
        this.replies = replies;
    }
}
