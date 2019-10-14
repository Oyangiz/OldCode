package com.fc.controller;

import com.fc.mapper.UserMapper;
import com.fc.model.PageBean;
import com.fc.model.Post;
import com.fc.model.Topic;
import com.fc.model.User;
import com.fc.service.PostService;
import com.fc.service.ReplyService;
import com.fc.service.TopicService;
import com.fc.service.UserService;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by oyangiz on 2017/6/5.
 */

@Controller
@RequestMapping("/")

public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @Autowired
    private TopicService topicService;

    @Autowired
    private ReplyService replyService;


    @RequestMapping("/admin.do")
    public String toAdmin(Model model, HttpSession session) {
        System.out.print(session.getAttribute("uid"));
        if (session.getAttribute("uid").toString().equals("1")) {
            return "admin";
        } else {
            return "login";
        }
    }


    @RequestMapping("/adminuser.do")
    public String toUsers(Model model) {

        List<User> adminUserList = userService.listUser();
        model.addAttribute("adminUserList", adminUserList);

        return "adminuser";
    }


    @RequestMapping("/ban.do")
    public String toBan(int uid) {
        System.out.print(uid);
        userService.updatePassword2("", uid);

        return "success";
    }

    @RequestMapping("/goadminupdateuser.do")
    public String toGoAdminUpdateUser(Model model, int uid) {
        User updateuser  = userService.getEditInfo(uid);
        model.addAttribute("updateuser", updateuser);
        return "adminupdateuser";

    }

    @RequestMapping("/adminupdateuser.do")
    public String adminUpdateUser(Model model,int uid,String username,String description){
        User user = new User();
        user.setUid(uid);
        user.setUsername(username);
        user.setDescription(description);
        userService.adminupdateUser(user);

        return "success";
    }


    @RequestMapping("/adminpost.do")
    public String toPosts(int curPage, Model model) {
        PageBean<Post> pageBean = postService.listPostByTime(curPage);
        List<User> userList = userService.listUserByTime();
        List<User> hotUserList = userService.listUserByHot();
        model.addAttribute("pageBean", pageBean);
        model.addAttribute("userList", userList);
        model.addAttribute("hotUserList", hotUserList);

        return "adminpost";
    }

    @RequestMapping("/admintopic.do")
    public String toadmintopic(Model model){

        List<Topic> adminTopicList = topicService.listTopic();
        model.addAttribute("adminTopicList",adminTopicList);

        return "admintopic";
    }

    @RequestMapping("/addtopic.do")
    public String toaddtopic(Model model,int tid,String name,String content,String image){

        topicService.addTopic(tid,name,content,image);

        return "success";
    }

    @RequestMapping("/goupdatetopic.do")
    public String toGoUpdateTopic(Model model, int tid) {
        Topic updatetopic = topicService.getTopicNameById(tid);
        model.addAttribute("updatetopic", updatetopic);
        return "adminupdatetopic";

    }

    @RequestMapping("/updatetopic.do")
    public String toUpdateTopic(Model model,int tid,String name,String content,String image){
        Topic topic = new Topic();
        topic.setTid(tid);
        topic.setName(name);
        topic.setContent(content);
        topic.setImage(image);
        topicService.updateTopic(topic);

        return "success";
    }

    @RequestMapping("/deletetopic.do")
    public String todeletetopic(Model model,int tid){

       if (postService.getPostListByTid(tid).size() == 0){
           topicService.deleteTopic(tid);
           return "success";
       }else {
           return "fail-topic";
       }
    }

    @RequestMapping("/deletepost.do")
    public String todeletePost(Model model,int pid){

        postService.deletePost(pid);

        return "success";
    }

    @RequestMapping("/goadminupdatepost.do")
    public String toGoUpdatePost(Model model, int pid) {
        Post updatepost = postService.getPostByPid(pid);
        model.addAttribute("updatepost", updatepost);
        return "adminupdatepost";

    }

    @RequestMapping("/adminupdatepost.do")
    public String adminUpdatePost(Model model,int pid,String title,String content){
        Post post = new Post();
        post.setPid(pid);
        post.setTitle(title);
        post.setContent(content);
        postService.updatePost(post);

        return "success";
    }

    @RequestMapping("/goadminupdatenotice.do")
    public String toGoUpdateNotice(Model model, int id) {
        String t1=topicService.othersT1(id);
        model.addAttribute("id", id);
        model.addAttribute("t1", t1);
        return "adminupdatenotice";

    }

    @RequestMapping("/adminupdatenotice.do")
    public String adminUpdatenotice(Model model,int id,String t1){
        topicService.updateT1(t1,id);

        return "success";
    }


}