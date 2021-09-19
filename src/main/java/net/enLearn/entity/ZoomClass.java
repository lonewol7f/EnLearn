package net.enLearn.entity;

import javax.persistence.*;

public class ZoomClass {

    @Entity
    @Table(name = "zoom_class")
    public class ZoomClass {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private int id;

        @Column(name = "title")
        private String title;

        @Column(name = "description")
        private String description;

        @Column(name = "date")
        private String date;


        @Column(name = "time")
        private String time;

        @Column(name = "zoom_link")
        private String zoom_link;

    }
}
