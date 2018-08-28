package com.advertisement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainTemplateController {
	
    @RequestMapping(value="/main")
    public String getMain() {
    	return "admin/main";	
    }

    @RequestMapping(value="/adminreg")
    public String getAdminReg() {
    	return "admin/adminreg";	
    }

    @RequestMapping(value="/area")
    public String getArea() {
    	return "admin/adminarea";	
    }

    @RequestMapping(value="/categories")
    public String getCategories() {
    	return "admin/categories";	
    }

    @RequestMapping(value="/house")
    public String getHouse() {
    	return "admin/house";	
    }

    @RequestMapping(value="/car")
    public String getCar() {
    	return "admin/car";	
    }
    
    @RequestMapping(value="/office")
    public String getOffice() {
    	return "admin/office";	
    }

    @RequestMapping(value="/others")
    public String getOthers() {
    	return "admin/others";	
    }

    @RequestMapping(value="/userinfo")
    public String getUserInfo() {
    	return "admin/userinfo";	
    }

    @RequestMapping(value="/postinfo")
    public String getPostInfo() {
    	return "admin/postinfo";	
    }

    @RequestMapping(value="/division")
    public String getDivision() {
    	return "admin/division";	
    }

    @RequestMapping(value="/district")
    public String getDistrict() {
    	return "admin/district";	
    }
    ////////////////////////////////////////////
    
    @RequestMapping(value="/index")
    public String getIndex() {
    	return "user/index";	
    }

    @RequestMapping(value="/about")
    public String getAbout() {
    	return "user/about";	
    }

    @RequestMapping(value="/ads-details")
    public String geAds_details() {
    	return "user/ads-details";	
    }

    @RequestMapping(value="/u_car")
    public String getU_car() {
    	return "user/u_car";	
    }

    @RequestMapping(value="/u_house")
    public String getU_house() {
    	return "user/u_house";	
    }

    @RequestMapping(value="/contact")
    public String getContact() {
    	return "user/contact";	
    }
    
    @RequestMapping(value="/forgot-password")
    public String getforgot_password() {
    	return "user/forgot-password";	
    }

    @RequestMapping(value="/u_others")
    public String getU_others() {
    	return "user/u_others";	
    }

    @RequestMapping(value="/u_office")
    public String getU_office() {
    	return "user/u_office";	
    }

    @RequestMapping(value="/post-ads")
    public String getPost_ads() {
    	return "user/post-ads";	
    }

    @RequestMapping(value="/login")
    public String getLogin() {
    	return "user/login";	
    }

    @RequestMapping(value="/signup")
    public String getSignup() {
    	return "user/signup";	
    }

}

