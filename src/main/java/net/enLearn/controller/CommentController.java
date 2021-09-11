package net.enLearn.controller;

import net.enLearn.entity.*;
import net.enLearn.helper.Response;
import net.enLearn.service.*;
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
@ResponseBody
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

    @Autowired
    private ReplyService replyService;

    @Autowired
    private NotificationService notificationService;


    @GetMapping("/list")
    public Response getCommentsAssociatedToVideo(@RequestParam("videoId") int vId) {
        List<Comment> comments = commentService.getCommentsByVideoId(vId);

        Response response = new Response("SUCCESS", comments);

        return response;
    }

    @GetMapping("/add")
    public Response saveComment(@RequestParam("videoId") int vId, @RequestParam("comment") String comment) {

        int uId = userService.getLoggedUserId();

        RecordedVideo video = recordedVideoService.getVideoById(vId);
        User user = userService.getUserById(uId);

        Comment newComment = new Comment();
        newComment.setComment(comment);
        newComment.setUser(user);
        newComment.setVideo(video);

        commentService.saveOrUpdateComment(newComment);

        // TODO : add notification
        // Comment lastComment = commentService.getLastComment();
        // Teacher teacher = lastComment.getVideo().getCourse().getTeacher();
        //
        // Notification notification = new Notification();
        // notification.setTeacher(teacher);
        // notification.setComment(lastComment);

        Response response = new Response("SUCCESS");

        return response;
    }

    // @GetMapping("/update")
    // public Response updateComment(@RequestParam("videoId") int vId, @RequestParam("userId") int uId,
    //                               @RequestParam("commentId") int cId, @RequestParam("comment") String newComment) {
    //     RecordedVideo video = recordedVideoService.getVideoById(vId);
    //     User user = userService.getUserById(uId);
    //
    //     Comment comment = new Comment();
    //     comment.setId(cId);
    //     comment.setComment(newComment);
    //     comment.setUser(user);
    //     comment.setVideo(video);
    //
    //     commentService.saveOrUpdateComment(comment);
    //
    //     Response response = new Response("SUCCESS");
    //
    //     return response;
    // }

    @GetMapping("/delete")
    public Response deleteComment(@RequestParam("commentId") int id) {
        commentService.deleteCommentByCommentId(id);

        Response response = new Response("SUCCESS");

        return response;
    }

    @GetMapping("/replies/add")
    public Response saveReply(@RequestParam("commentId") int cId, @RequestParam("reply") String reply) {

        int uId = userService.getLoggedUserId();

        Comment comment = commentService.getCommentByCommentId(cId);
        User user = userService.getUserById(uId);

        Reply newReply = new Reply();
        newReply.setUser(user);
        newReply.setComment(comment);
        newReply.setReply(reply);

        replyService.saveOrUpdateReply(newReply);

        Response response = new Response("SUCCESS");

        return response;
    }

    // @GetMapping("/replies/update")
    // public Response updateReply(@RequestParam("replyId") int rId, @RequestParam("userId") int uId,
    //                             @RequestParam("commentId") int cId, @RequestParam("reply") String newReply) {
    //
    //     Comment comment = commentService.getCommentByCommentId(cId);
    //     User user = userService.getUserById(uId);
    //
    //     Reply reply = new Reply();
    //     reply.setId(rId);
    //     reply.setUser(user);
    //     reply.setComment(comment);
    //     reply.setReply(newReply);
    //
    //     replyService.saveOrUpdateReply(reply);
    //
    //     Response response = new Response("SUCCESS");
    //
    //     return response;
    //
    // }

    @GetMapping("/replies/delete")
    public Response deleteReply(@RequestParam("replyId") int id) {
        replyService.deleteReplyByReplyId(id);

        Response response = new Response("SUCCESS");

        return response;
    }

}
