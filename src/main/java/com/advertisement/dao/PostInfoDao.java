
package com.advertisement.dao;

import com.advertisement.entity.PostInfo;
import java.util.List;


public interface PostInfoDao {
    List<PostInfo> getAll();

    PostInfo getById(Integer postId);

    void add(PostInfo postInfo);

    void update(PostInfo postInfo);

    void delete(Integer postId);

    boolean isExists(String category, String title, String description,String division, String district, String price,String uName, String uEmail, String uPhone,String uLocation);
}
