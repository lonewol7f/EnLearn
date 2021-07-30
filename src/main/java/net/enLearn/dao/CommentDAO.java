package net.enLearn.dao;

import net.enLearn.entity.Comment;

import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

public interface CommentDAO {

    List<Comment> getCommentsByVideoId(int id);
    void saveOrUpdateComment(Comment comment);
    void deleteCommentByCommentId(int id);
    Comment getCommentByCommentId(int id);

}
