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
 * User generated by hbm2java
 */
@Entity
@Table(name = "user",
        catalog = "advertise"
)
public class User implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "user_id", unique = true, nullable = false)
    private Integer userId;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "area_id")
    private Area area;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "district_id")
    private District district;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "division_id")
    private Division division;
    @Column(name = "user_name", nullable = false, length = 200)
    private String userName;
    @Column(name = "user_email", nullable = false, length = 200)
    private String userEmail;
    @Column(name = "user_password", nullable = false, length = 100)
    private String userPassword;
    @Column(name = "user_gender", length = 45)
    private String userGender;
    @Temporal(TemporalType.DATE)
    @Column(name = "user_birthdate", length = 10)
    private Date userBirthdate;
    @Column(name = "user_photo")
    private byte[] userPhoto;
    @Column(name = "user_phone", length = 45)
    private String userPhone;
    @Column(name = "user_address", length = 350)
    private String userAddress;
//     private Set<CarAdvertise> carAdvertises = new HashSet<CarAdvertise>(0);
//     private Set<OtherComment> otherComments = new HashSet<OtherComment>(0);
//     private Set<OtherAdvertise> otherAdvertises = new HashSet<OtherAdvertise>(0);
//     private Set<CarComment> carComments = new HashSet<CarComment>(0);
//     private Set<HouseAdvertise> houseAdvertises = new HashSet<HouseAdvertise>(0);
//     private Set<HouseComment> houseComments = new HashSet<HouseComment>(0);

    public User() {
    }

    public User(String userName, String userEmail, String userPassword) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
    }

    public User(Area area, District district, Division division, String userName, String userEmail, String userPassword, String userGender, Date userBirthdate, byte[] userPhoto, String userPhone, String userAddress, Set<CarAdvertise> carAdvertises, Set<OtherComment> otherComments, Set<OtherAdvertise> otherAdvertises, Set<CarComment> carComments, Set<HouseAdvertise> houseAdvertises, Set<HouseComment> houseComments) {
        this.area = area;
        this.district = district;
        this.division = division;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userGender = userGender;
        this.userBirthdate = userBirthdate;
        this.userPhoto = userPhoto;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
//       this.carAdvertises = carAdvertises;
//       this.otherComments = otherComments;
//       this.otherAdvertises = otherAdvertises;
//       this.carComments = carComments;
//       this.houseAdvertises = houseAdvertises;
//       this.houseComments = houseComments;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Area getArea() {
        return this.area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public District getDistrict() {
        return this.district;
    }

    public void setDistrict(District district) {
        this.district = district;
    }

    public Division getDivision() {
        return this.division;
    }

    public void setDivision(Division division) {
        this.division = division;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return this.userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return this.userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserGender() {
        return this.userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public Date getUserBirthdate() {
        return this.userBirthdate;
    }

    public void setUserBirthdate(Date userBirthdate) {
        this.userBirthdate = userBirthdate;
    }

    public byte[] getUserPhoto() {
        return this.userPhoto;
    }

    public void setUserPhoto(byte[] userPhoto) {
        this.userPhoto = userPhoto;
    }

    public String getUserPhone() {
        return this.userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return this.userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

//@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
//    public Set<CarAdvertise> getCarAdvertises() {
//        return this.carAdvertises;
//    }
//    
//    public void setCarAdvertises(Set<CarAdvertise> carAdvertises) {
//        this.carAdvertises = carAdvertises;
//    }
//
//@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
//    public Set<OtherComment> getOtherComments() {
//        return this.otherComments;
//    }
//    
//    public void setOtherComments(Set<OtherComment> otherComments) {
//        this.otherComments = otherComments;
//    }
//
//@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
//    public Set<OtherAdvertise> getOtherAdvertises() {
//        return this.otherAdvertises;
//    }
//    
//    public void setOtherAdvertises(Set<OtherAdvertise> otherAdvertises) {
//        this.otherAdvertises = otherAdvertises;
//    }
//
//@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
//    public Set<CarComment> getCarComments() {
//        return this.carComments;
//    }
//    
//    public void setCarComments(Set<CarComment> carComments) {
//        this.carComments = carComments;
//    }
//
//@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
//    public Set<HouseAdvertise> getHouseAdvertises() {
//        return this.houseAdvertises;
//    }
//    
//    public void setHouseAdvertises(Set<HouseAdvertise> houseAdvertises) {
//        this.houseAdvertises = houseAdvertises;
//    }
//
//@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
//    public Set<HouseComment> getHouseComments() {
//        return this.houseComments;
//    }
//    
//    public void setHouseComments(Set<HouseComment> houseComments) {
//        this.houseComments = houseComments;
//    }
}