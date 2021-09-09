package net.enLearn.entity;

import javax.persistence.*;

/**
 * Created by Flashminat0 on 05/08/2021
 */

@Entity
@Table(name = "redeem_code")
public class RedeemCode {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "code", unique = true)
    private String code;

    @Column(name = "coins")
    private int coins;

    @Column(name = "is_redeemed")
    private boolean isRedeemed;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE,
            CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE,
            CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "admin_id")
    private Admin admin;

    // @OneToOne(fetch = FetchType.EAGER, mappedBy = "code", cascade = {CascadeType.PERSIST, CascadeType.MERGE,
    //         CascadeType.DETACH, CascadeType.REFRESH})
    // @Fetch(value = FetchMode.JOIN)
    // private Order order;

    public RedeemCode() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getCoins() {
        return coins;
    }

    public void setCoins(int coins) {
        this.coins = coins;
    }

    public boolean isRedeemed() {
        return isRedeemed;
    }

    public void setRedeemed(boolean redeemed) {
        isRedeemed = redeemed;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    // public Order getOrder() {
    //     return order;
    // }
    //
    // public void setOrder(Order order) {
    //     this.order = order;
    // }

    // TODO: update user and admin with associations
}
