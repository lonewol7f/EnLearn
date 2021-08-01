package net.enLearn.controller;

import net.enLearn.entity.Comment;
import net.enLearn.entity.RecordedVideo;
import net.enLearn.entity.User;
import net.enLearn.service.CommentService;
import net.enLearn.service.RecordedVideoService;
import net.enLearn.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Kalana on 30/07/2021
 */

@Controller
@RequestMapping("/comments")
public class CommentController {

    @Autowired
    private Logger logger;

    @Autowired
    private CommentService commentService;

    @Autowired
    private RecordedVideoService recordedVideoService;

    @Autowired
    private UserService userService;


    @GetMapping("/list")
    @ResponseBody
    public List<Comment> getCommentsAssociatedToVideo(@RequestParam("videoId") int vId) {
        return commentService.getCommentsByVideoId(vId);
    }

    @GetMapping("/add")
    @ResponseBody
    public void saveComment(@RequestParam("videoId") int vId, @RequestParam("userId") int uId,
                            @RequestParam("comment") String newComment) {
        RecordedVideo video = recordedVideoService.getVideoById(vId);
        User user = userService.getUserById(uId);

        Comment comment = new Comment();
        comment.setComment(newComment);
        comment.setUser(user);
        comment.setVideo(video);

        commentService.saveOrUpdateComment(comment);
    }

    @GetMapping("/update")
    public void updateComment(@RequestParam("videoId") int vId, @RequestParam("userId") int uId,
                              @RequestParam("commentId") int cId, @RequestParam("comment") String newComment) {
        RecordedVideo video = recordedVideoService.getVideoById(vId);
        User user = userService.getUserById(uId);

        Comment comment = new Comment();
        comment.setId(cId);
        comment.setComment(newComment);
        comment.setUser(user);
        comment.setVideo(video);

        commentService.saveOrUpdateComment(comment);
    }

    @GetMapping("/delete")
    public void deleteComment(@RequestParam("commentId") int id) {
        commentService.deleteCommentByCommentId(id);
    }

}
