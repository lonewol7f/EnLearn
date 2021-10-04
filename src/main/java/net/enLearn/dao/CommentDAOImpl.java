package net.enLearn.dao;

import net.enLearn.entity.Comment;
import net.enLearn.entity.RecordedVideo;
import net.enLearn.entity.Reply;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

@Repository
public class CommentDAOImpl implements CommentDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Comment> getCommentsByVideoId(int id) {
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // get video
        RecordedVideo video = session.get(RecordedVideo.class, id);

        // get comments associated to video
        List<Comment> comments = video.getComments();

        return comments;
    }

    @Override
    public void saveOrUpdateComment(Comment comment) {
        // get current session
        Session session = sessionFactory.getCurrentSession();


        // if id associated with object, it will update else it will save
        session.saveOrUpdate(comment);
    }

    @Override
    public void deleteCommentByCommentId(int id) {
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // get comment
        Comment comment = getCommentByCommentId(id);
        comment.getVideo().getComments().remove(comment);
        comment.getUser().getComments().remove(comment);
        comment.getNotification().setComment(null);
        comment.setNotification(null);

        for (Reply reply : comment.getReplies()) {
            reply.getUser().getReplies().remove(reply);
        }

        // delete comment
        session.delete(comment);
    }

    @Override
    public Comment getCommentByCommentId(int id) {
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // get comment
        Comment comment = session.get(Comment.class, id);

        return comment;
    }

    @Override
    public Comment getLastComment() {
        // get current session
        Session session = sessionFactory.getCurrentSession();

        Query query = session.createQuery("from Comment order by id DESC");
        query.setMaxResults(1);

        Comment comment = (Comment) query.uniqueResult();

        return comment;
    }
}
