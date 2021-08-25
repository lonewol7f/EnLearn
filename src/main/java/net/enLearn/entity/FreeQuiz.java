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
   private String quizLink;

   @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
   @JoinColumn(name = "teacher_id")
   private Teacher teacher;

   public FreeQuiz() {
   }

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getQuizLink() {
      return quizLink;
   }

   public void setQuizLink(String quizLink) {
      this.quizLink = quizLink;
   }

   public Teacher getTeacher() {
      return teacher;
   }

   public void setTeacher(Teacher teacher) {
      this.teacher = teacher;
   }
}
