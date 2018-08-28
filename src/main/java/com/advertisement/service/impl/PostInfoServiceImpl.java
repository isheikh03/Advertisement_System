package com.advertisement.service.impl;

import com.advertisement.dao.PostInfoDao;
import com.advertisement.entity.PostInfo;
import com.advertisement.service.PostInfoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostInfoServiceImpl implements PostInfoService {

    @Autowired
    PostInfoDao postInfoDao;

    @Override
    public List<PostInfo> getAll() {
        return postInfoDao.getAll();
    }

    @Override
    public PostInfo getById(Integer postId) {
        PostInfo postInfo = postInfoDao.getById(postId);
        return postInfo;
    }

    @Override
    public synchronized boolean add(PostInfo postInfo) {
        if (postInfoDao.isExists(postInfo.getCategory(), postInfo.getTitle(), postInfo.getDescription(), postInfo.getDivision(), postInfo.getDistrict(),
                postInfo.getPrice(), postInfo.getuName(), postInfo.getuEmail(), postInfo.getuPhone(), postInfo.getuLocation())) {
            return false;
        } else {
            postInfoDao.add(postInfo);
            return true;
        }
    }

    @Override
    public void update(PostInfo postInfo) {
        postInfoDao.update(postInfo);
    }

    @Override
    public void delete(Integer postId) {
        postInfoDao.delete(postId);
    }

}
