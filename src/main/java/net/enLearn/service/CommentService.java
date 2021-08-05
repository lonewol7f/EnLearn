package net.enLearn.service;

import net.enLearn.entity.Comment;

import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

public interface CommentService {

    List<Comment> getCommentsByVideoId(int id);
    void saveOrUpdateComment(Comment comment);
    void deleteCommentByCommentId(int id);
    Comment getCommentByCommentId(int id);
    Comment getLastComment();

}
