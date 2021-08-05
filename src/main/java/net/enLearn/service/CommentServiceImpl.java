package net.enLearn.service;

import net.enLearn.dao.CommentDAO;
import net.enLearn.entity.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentDAO commentDAO;

    @Override
    @Transactional
    public List<Comment> getCommentsByVideoId(int id) {
        return commentDAO.getCommentsByVideoId(id);
    }

    @Override
    @Transactional
    public void saveOrUpdateComment(Comment comment) {
        commentDAO.saveOrUpdateComment(comment);
    }

    @Override
    @Transactional
    public void deleteCommentByCommentId(int id) {
        commentDAO.deleteCommentByCommentId(id);
    }

    @Override
    @Transactional
    public Comment getCommentByCommentId(int id) {
        return commentDAO.getCommentByCommentId(id);
    }

    @Override
    @Transactional
    public Comment getLastComment() {
        return commentDAO.getLastComment();
    }
}
