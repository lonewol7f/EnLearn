package net.enLearn.dao;

import net.enLearn.entity.Comment;
import net.enLearn.entity.Reply;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

@Repository
public class ReplyDAOImpl implements ReplyDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Reply> getRepliesByCommentId(int id) {
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // get comment
        Comment comment = session.get(Comment.class, id);

        // get replies associated with comment
        List<Reply> replies = comment.getReplies();

        return replies;
    }

    @Override
    public void saveOrUpdateReply(Reply reply) {
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // if id associated with object, it will update else it will save
        session.saveOrUpdate(reply);
    }

    @Override
    public void deleteReplyByReplyId(int id) {
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // get reply
        Reply reply = getReplyByReplyId(id);

        // delete reply
        session.delete(reply);
    }

    @Override
    public Reply getReplyByReplyId(int id){
        // get current session
        Session session = sessionFactory.getCurrentSession();

        // get reply
        Reply reply = session.get(Reply.class, id);

        return  reply;
    }
}
