package net.enLearn.entity;

import javax.persistence.*;

@Entity
@Table(name = "advertisements_approve")
@PrimaryKeyJoinColumn(name = "advertisement_id")
public class AdvertisementApprove {

    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "advertisement_id")
    private int id;

    @Column(name = "type")
    private String type;

   @Column(name = "admin_id")
   private int admin_id;



    public AdvertisementApprove(){}

    public AdvertisementApprove(int id, String type, int admin_id){
        this.type = type;
        this.id = id;
        this.admin_id = admin_id;
    }



    public String getType(){return type;}

    public void setType(String type){
        this.type = type;
    }

    public int getId(){return id;}

    public void setId(int id){this.id = id;}

    public int getAdmin_id(){return admin_id;}

    public void setAdmin_id(int admin_id){this.admin_id = admin_id;}



}
