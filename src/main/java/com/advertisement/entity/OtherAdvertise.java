package com.advertisement.entity;
// Generated Apr 26, 2017 12:47:21 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * OtherAdvertise generated by hbm2java
 */
@Entity
@Table(name="other_advertise"
    ,catalog="advertise"
)
public class OtherAdvertise  implements java.io.Serializable {


     private Integer otherPostId;
     private Area area;
     private District district;
     private Division division;
     private User user;
     private String productName;
     private String advertisementTitle;
     private String productDescription;
     private byte[] productImage;
     private String contactNo;
     private Date postDate;
     private char status;
     private Set<OtherComment> otherComments = new HashSet<OtherComment>(0);

    public OtherAdvertise() {
    }

	
    public OtherAdvertise(Area area, District district, Division division, User user, String productName, String advertisementTitle, String productDescription, String contactNo, Date postDate, char status) {
        this.area = area;
        this.district = district;
        this.division = division;
        this.user = user;
        this.productName = productName;
        this.advertisementTitle = advertisementTitle;
        this.productDescription = productDescription;
        this.contactNo = contactNo;
        this.postDate = postDate;
        this.status = status;
    }
    public OtherAdvertise(Area area, District district, Division division, User user, String productName, String advertisementTitle, String productDescription, byte[] productImage, String contactNo, Date postDate, char status, Set<OtherComment> otherComments) {
       this.area = area;
       this.district = district;
       this.division = division;
       this.user = user;
       this.productName = productName;
       this.advertisementTitle = advertisementTitle;
       this.productDescription = productDescription;
       this.productImage = productImage;
       this.contactNo = contactNo;
       this.postDate = postDate;
       this.status = status;
       this.otherComments = otherComments;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="other_post_id", unique=true, nullable=false)
    public Integer getOtherPostId() {
        return this.otherPostId;
    }
    
    public void setOtherPostId(Integer otherPostId) {
        this.otherPostId = otherPostId;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="area_id", nullable=false)
    public Area getArea() {
        return this.area;
    }
    
    public void setArea(Area area) {
        this.area = area;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="district_id", nullable=false)
    public District getDistrict() {
        return this.district;
    }
    
    public void setDistrict(District district) {
        this.district = district;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="division_id", nullable=false)
    public Division getDivision() {
        return this.division;
    }
    
    public void setDivision(Division division) {
        this.division = division;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_id", nullable=false)
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    
    @Column(name="product_name", nullable=false, length=100)
    public String getProductName() {
        return this.productName;
    }
    
    public void setProductName(String productName) {
        this.productName = productName;
    }

    
    @Column(name="advertisement_title", nullable=false, length=450)
    public String getAdvertisementTitle() {
        return this.advertisementTitle;
    }
    
    public void setAdvertisementTitle(String advertisementTitle) {
        this.advertisementTitle = advertisementTitle;
    }

    
    @Column(name="product_description", nullable=false, length=450)
    public String getProductDescription() {
        return this.productDescription;
    }
    
    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    
    @Column(name="product_image")
    public byte[] getProductImage() {
        return this.productImage;
    }
    
    public void setProductImage(byte[] productImage) {
        this.productImage = productImage;
    }

    
    @Column(name="contact_no", nullable=false, length=45)
    public String getContactNo() {
        return this.contactNo;
    }
    
    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="post_date", nullable=false, length=19)
    public Date getPostDate() {
        return this.postDate;
    }
    
    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    
    @Column(name="status", nullable=false, length=1)
    public char getStatus() {
        return this.status;
    }
    
    public void setStatus(char status) {
        this.status = status;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="otherAdvertise")
    public Set<OtherComment> getOtherComments() {
        return this.otherComments;
    }
    
    public void setOtherComments(Set<OtherComment> otherComments) {
        this.otherComments = otherComments;
    }




}


