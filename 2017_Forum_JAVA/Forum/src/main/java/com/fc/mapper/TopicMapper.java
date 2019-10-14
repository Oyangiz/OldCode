package com.fc.mapper;

import com.fc.model.Post;
import com.fc.model.Topic;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface TopicMapper {

    List<Topic> listTopic();

    List<String> listImage();

    Topic getTopicNameById(int tid);

    void insertTopic(Topic topic);

    void updateTopic(Topic topic);

    void deleteTopic(int tid);

    String othersT1(int id);

    void updateT1(@Param("t1")String t1, @Param("id")int id);

}
