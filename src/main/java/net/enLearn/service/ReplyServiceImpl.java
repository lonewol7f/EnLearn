package net.enLearn.service;

import net.enLearn.dao.ReplyDAO;
import net.enLearn.entity.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kalana on 29/07/2021
 */

@Service
public class ReplyServiceImpl implements ReplyService{

    @Autowired
    private ReplyDAO replyDAO;

    @Override
    @Transactional
    public List<Reply> getRepliesByCommentId(int id) {
        return replyDAO.getRepliesByCommentId(id);
    }

    @Override
    @Transactional
    public void saveOrUpdateReply(Reply reply) {
        replyDAO.saveOrUpdateReply(reply);
    }

    @Override
    @Transactional
    public void deleteReplyByReplyId(int id) {
        replyDAO.deleteReplyByReplyId(id);
    }

    @Override
    @Transactional
    public Reply getReplyByReplyId(int id) {
        return replyDAO.getReplyByReplyId(id);
    }
}
