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

   @Column(name = "topic")
   private String topic;

   @Column(name = "grade")
   private String grade;

   @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST,CascadeType.DETACH,CascadeType.MERGE,CascadeType.REFRESH})
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

   public String getTopic() {
      return topic;
   }

   public void setTopic(String topic) {
      this.topic = topic;
   }

   public String getGrade() {
      return grade;
   }

   public void setGrade(String grade) {
      this.grade = grade;
   }
}
