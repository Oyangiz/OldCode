package com.fc.service;

import com.fc.mapper.PostMapper;
import com.fc.mapper.TopicMapper;
import com.fc.mapper.UserMapper;
import com.fc.model.Post;
import com.fc.model.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class TopicService {


    @Autowired
    private TopicMapper topicMapper;

    public List<Topic> listTopic() {
        return topicMapper.listTopic();
    }

    public List<String> listImage() {
        return topicMapper.listImage();
    }

    public  Topic getTopicNameById(int tid){return topicMapper.getTopicNameById(tid);}

    public void addTopic(int tid,String name,String content,String image) {
        //构造Reply对象
        Topic topic = new Topic();
        topic.setTid(tid);
        topic.setName(name);
        topic.setContent(content);
        topic.setImage(image);
        //向reply表插入一条记录
        topicMapper.insertTopic(topic);


    }

    public void updateTopic(Topic topic) {
        topicMapper.updateTopic(topic);
    }


    public void deleteTopic(int tid) { topicMapper.deleteTopic(tid); }

    public String othersT1(int id){return topicMapper.othersT1(id);}

    public  void  updateT1(String t1,int id){ topicMapper.updateT1(t1, id); }


}

