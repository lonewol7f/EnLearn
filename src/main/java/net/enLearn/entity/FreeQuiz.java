package net.enLearn.entity;

import javax.persistence.*;

/**
 * Created by Osini Kithma
 * 8/24/21
 */

@Entity
@Table(name = "free_quiz")
public class FreeQuiz {

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name = "id")
   private int id;

   @Column(name = "quiz_link")
   private String quiz_link;

   @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
   @JoinColumn(name = "teacher_id")
   private Teacher teacher;

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getQuiz_link() {
      return quiz_link;
   }

   public void setQuiz_link(String quiz_link) {
      this.quiz_link = quiz_link;
   }

   public Teacher getTeacher() {
      return teacher;
   }

   public void setTeacher(Teacher teacher) {
      this.teacher = teacher;
   }
}
