package com.advertisement.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "post_info",
        catalog = "advertise"
)
public class PostInfo implements java.io.Serializable {

    @Id
    @Column(name = "post_id", unique = true, nullable = false)
    private Integer postId;

    @Column(name = "category", nullable = false, length = 45)
    private String category;

    @Column(name = "title", nullable = false, length = 45)
    private String title;

    @Column(name = "description", nullable = false, length = 45)
    private String description;

    @Column(name = "division", nullable = false, length = 45)
    private String division;

    @Column(name = "district", nullable = false, length = 45)
    private String district;

    @Column(name = "price", nullable = false, length = 45)
    private String price;

    @Column(name = "u_name", nullable = false, length = 45)
    private String uName;

    @Column(name = "u_email", nullable = false, length = 45)
    private String uEmail;

    @Column(name = "u_phone", nullable = false, length = 45)
    private String uPhone;

    @Column(name = "u_location", nullable = false, length = 45)
    private String uLocation;

    public PostInfo() {
    }

    public PostInfo(Integer postId, String category, String title, String description, String division, String district, String price, String uName, String uEmail, String uPhone, String uLocation) {
        this.postId = postId;
        this.category = category;
        this.title = title;
        this.description = description;
        this.division = division;
        this.district = district;
        this.price = price;
        this.uName = uName;
        this.uEmail = uEmail;
        this.uPhone = uPhone;
        this.uLocation = uLocation;
    }

    public PostInfo(String category, String title, String description, String division, String district, String price, String uName, String uEmail, String uPhone, String uLocation) {
        this.category = category;
        this.title = title;
        this.description = description;
        this.division = division;
        this.district = district;
        this.price = price;
        this.uName = uName;
        this.uEmail = uEmail;
        this.uPhone = uPhone;
        this.uLocation = uLocation;
    }

    public Integer getPostId() {
        return postId;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getuPhone() {
        return uPhone;
    }

    public void setuPhone(String uPhone) {
        this.uPhone = uPhone;
    }

    public String getuLocation() {
        return uLocation;
    }

    public void setuLocation(String uLocation) {
        this.uLocation = uLocation;
    }
    

}
