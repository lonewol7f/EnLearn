package net.enLearn.entity;

import javax.persistence.*;

/**
 * Created by Osini Kithma
 * 8/24/21
 */

@Entity
@Table(name = "special_quiz")
public class SpecialQuiz {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private int id;

        @Column(name = "marks_limit")
        private int marks_limit;

        @Column(name = "attempt")
        private int attempt;

        @Column(name = "mcq_link")
        private String mcq_link;

        @Column(name = "e_and_s_link")
        private String e_and_s_link;

        @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
        @JoinColumn(name = "teacher_id")
        private Teacher teacher;

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public int getMarks_limit() {
            return marks_limit;
        }

        public void setMarks_limit(int marks_limit) {
            this.marks_limit = marks_limit;
        }

        public int getAttempt() {
            return attempt;
        }

        public void setAttempt(int attempt) {
            this.attempt = attempt;
        }

        public String getMcq_link() {
            return mcq_link;
        }

        public void setMcq_link(String mcq_link) {
            this.mcq_link = mcq_link;
        }

        public String getE_and_s_link() {
            return e_and_s_link;
        }

        public void setE_and_s_link(String e_and_s_link) {
            this.e_and_s_link = e_and_s_link;
        }

        public Teacher getTeacher() {
            return teacher;
        }

        public void setTeacher(Teacher teacher) {
            this.teacher = teacher;
        }
    }

