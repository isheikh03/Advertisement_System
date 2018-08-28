package com.advertisement.dao.impl;

import com.advertisement.dao.PostInfoDao;
import com.advertisement.entity.PostInfo;
import java.util.List;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

@Repository
@Transactional
public class PostInfoDaoImpl implements PostInfoDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @SuppressWarnings("unchecked")
    @Override
    public List<PostInfo> getAll() {
        String hql = "FROM PostInfo as a ORDER BY a.postId";
        return (List<PostInfo>) hibernateTemplate.find(hql);
    }

    @Override
    public PostInfo getById(Integer postId) {
        return hibernateTemplate.get(PostInfo.class, postId);
    }

    @Override
    public void add(PostInfo postInfo) {
        hibernateTemplate.save(postInfo);
    }

    @Override
    public void update(PostInfo postInfo) {
        PostInfo a = getById(postInfo.getPostId());
        a.setCategory(postInfo.getCategory());
        a.setDistrict(postInfo.getDistrict());
        a.setDivision(postInfo.getDivision());
        a.setTitle(postInfo.getTitle());
        a.setDescription(postInfo.getDescription());
        a.setPrice(postInfo.getPrice());
        a.setuName(postInfo.getuName());
        a.setuEmail(postInfo.getuEmail());
        a.setuPhone(postInfo.getuPhone());
        a.setuLocation(postInfo.getuLocation());
        hibernateTemplate.update(a);
    }

    @Override
    public void delete(Integer postId) {
        hibernateTemplate.delete(getById(postId));
    }

    @SuppressWarnings("unchecked")
    @Override
    public boolean isExists(String category, String title, String description,String division, String district, String price,String uName, String uEmail, String uPhone,String uLocation) {
        String hql = "FROM PostInfo as a WHERE a.category = ? and a.title = ? and a.description = ? and a.division = ? and a.district = ? and a.price = ? and a.uName = ? and a.uEmail = ? and a.uPhone = ? and a.uLocation = ? ";
        List<PostInfo> postInfos = (List<PostInfo>) hibernateTemplate.find(hql, category, title, description, division,district,price,uName,uEmail,uPhone,uLocation);
        return postInfos.size() > 0 ? true : false;
    }

}
