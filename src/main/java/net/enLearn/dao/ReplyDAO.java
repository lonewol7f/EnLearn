package net.enLearn.dao;

import net.enLearn.entity.Reply;

import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

public interface ReplyDAO {

    List<Reply> getRepliesByCommentId(int id);
    void saveOrUpdateReply(Reply reply);
    void deleteReplyByReplyId(int id);
    Reply getReplyByReplyId(int id);

}
