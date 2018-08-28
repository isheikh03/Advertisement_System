package com.advertisement.service;

import com.advertisement.entity.PostInfo;
import java.util.List;

public interface PostInfoService {

    List<PostInfo> getAll();

    PostInfo getById(Integer postId);

    boolean add(PostInfo postInfo);

    void update(PostInfo postInfo);

    void delete(Integer postId);

//boolean isExists(String title, String s);

}
