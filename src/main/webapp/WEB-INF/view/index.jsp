<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from demo.graygrids.com/themes/classix/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Apr 2017 14:00:57 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="author" content="Clasified">
        <meta name="generator" content="Wordpress! - Open Source Content Management">
        <title>ClassiX - Bootstrap HTML5 Classified Template</title>

        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.html">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jasny-bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jasny-bootstrap.min.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/material-kit.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/fonts/line-icons/line-icons.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/fonts/line-icons/line-icons.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/extras/animate.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/extras/owl.carousel.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/extras/owl.theme.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/slicknav.css" type="text/css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-select.min.css">
    </head>
    <body>

        <div class="header">
            <nav class="navbar navbar-default main-navigation" role="navigation">
                <div class="container">
                    <div class="navbar-header">

                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand logo" href="index-2.html"><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt=""></a>
                    </div>


                    <div class="collapse navbar-collapse" id="navbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="login.html"><i class="lnr lnr-enter"></i> Login</a></li>
                            <li><a href="signup.html"><i class="lnr lnr-user"></i> Signup</a></li>
                            <li class="postadd">
                                <a class="btn btn-danger btn-post" href="post-ads.html"><span class="fa fa-plus-circle"></span> Post an Ad</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </nav>

            <div class="navmenu navmenu-default navmenu-fixed-left offcanvas">

                <div class="close" data-toggle="offcanvas" data-target=".navmenu">
                    <i class="fa fa-close"></i>
                </div>
                <h3 class="title-menu">All Pages</h3>
                <ul class="nav navmenu-nav">  
                    <li><a href="index-2.html">Home</a></li>
                    <li><a href="about.html">About us</a></li>
                    <li><a href="category.html">Category</a></li>
                    <li><a href="account-home.html">Account home</a></li>
                    <li><a href="account-myads.html">Account myads</a></li>
                    <li><a href="post-ads.html">Post ads</a></li>
                    <li><a href="posting-success.html">Posting-success</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="forgot-password.html">Forgot-password</a></li>
                    <li><a href="signup.html">Signup</a></li>
                </ul> 
            </div>  
            <div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite" data-wow-duration="500ms" data-toggle="offcanvas" data-target=".navmenu">
                <p><i class="fa fa-file-text-o"></i> All Pages</p>
            </div>
        </div>


        <section id="intro" class="section-intro">
            <div class="overlay">
                <div class="container">
                    <div class="main-text">
                        <h1 class="intro-title">Welcome To <span style="color: #3498DB">ClassiX</span></h1>
                        <p class="sub-title">Buy and sell everything from used cars to mobile phones and computers, or search for property, jobs and more</p>

                        <div class="row search-bar">
                            <div class="advanced-search">
                                <form class="search-form" method="get">
                                    <div class="col-md-3 col-sm-6 search-col">
                                        <div class="input-group-addon search-category-container">
                                            <label class="styled-select">
                                                <select class="dropdown-product selectpicker" name="product-cat">
                                                    <option value="0">All Categories</option>
                                                    <option class="subitem" value="community"> Community</option>
                                                    <option value="items-for-sale"> Items For Sale</option>
                                                    <option value="jobs"> Jobs</option>
                                                    <option value="personals"> Personals</option>
                                                    <option value="training"> Training</option>
                                                    <option value="real_estate"> Real Estate</option>
                                                    <option value="services"> Services</option>
                                                    <option value="vehicles"> Vehicles</option>
                                                </select>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 search-col">
                                        <div class="input-group-addon search-category-container">
                                            <label class="styled-select location-select">
                                                <select class="dropdown-product selectpicker" name="product-cat">
                                                    <option value="0">All Locations</option>
                                                    <option value="New York">New York</option>
                                                    <option value="California">California</option>
                                                    <option value="Washington">Washington</option>
                                                    <option value="churches">Birmingham</option>
                                                    <option value="Birmingham">Chicago</option>
                                                    <option value="Phoenix">Phoenix</option>
                                                </select>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 search-col">
                                        <input class="form-control keyword" name="keyword" value="" placeholder="Enter Keyword" type="text">
                                        <i class="fa fa-search"></i>
                                    </div>
                                    <div class="col-md-3 col-sm-6 search-col">
                                        <button class="btn btn-common btn-search btn-block"><strong>Search</strong></button>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <div class="wrapper">

            <section id="categories-homepage">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="section-title">Browse Ads from 8 Categories</h3>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="category-box border-1 wow fadeInUpQuick" data-wow-delay="0.3s">
                                <div class="icon">
                                    <a href="#"><i class="lnr lnr-users color-1"></i></a>
                                </div>
                                <div class="category-header">
                                    <a href="#house"><h4>House Rent</h4></a>
                                </div>
                                <div class="category-content">
                                    <ul>
                                        <li>
                                            <a href="category.html">Announcements</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>   
                                        <li>
                                            <a href="category.html">General Entertainment</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>
                                        <li>
                                            <a href="category.html">View all subcategories ?</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="category-box border-1 wow fadeInUpQuick" data-wow-delay="0.3s">
                                <div class="icon">
                                    <a href="#"><i class="lnr lnr-users color-1"></i></a>
                                </div>
                                <div class="category-header">
                                    <a href="#car"><h4>Car Rent</h4></a>
                                </div>
                                <div class="category-content">
                                    <ul>
                                        <li>
                                            <a href="category.html">Announcements</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>   
                                        <li>
                                            <a href="category.html">General Entertainment</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>
                                        <li>
                                            <a href="category.html">View all subcategories ?</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="category-box border-1 wow fadeInUpQuick" data-wow-delay="0.3s">
                                <div class="icon">
                                    <a href="#"><i class="lnr lnr-users color-1"></i></a>
                                </div>
                                <div class="category-header">
                                    <a href="#office"><h4>Office Rent</h4></a>
                                </div>
                                <div class="category-content">
                                    <ul>
                                        <li>
                                            <a href="category.html">Announcements</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>   
                                        <li>
                                            <a href="category.html">General Entertainment</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>
                                        <li>
                                            <a href="category.html">View all subcategories ?</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="category-box border-1 wow fadeInUpQuick" data-wow-delay="0.3s">
                                <div class="icon">
                                    <a href="#"><i class="lnr lnr-users color-1"></i></a>
                                </div>
                                <div class="category-header">
                                    <a href="#others"><h4>Others</h4></a>
                                </div>
                                <div class="category-content">
                                    <ul>
                                        <li>
                                            <a href="category.html">Announcements</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>   
                                        <li>
                                            <a href="category.html">General Entertainment</a>
                                        <sapn class="category-counter">3</sapn>
                                        </li>
                                        <li>
                                            <a href="category.html">View all subcategories ?</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>                       
                    </div>
                </div>
            </section>


            <section class="featured-lis">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 wow fadeIn" data-wow-delay="0.5s">
                            <h3 class="section-title">Featured Listings</h3>
                            <div id="new-products" class="owl-carousel">
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img1.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Lorem ipsum dolor sit</a>
                                        <span class="price">$150</span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img2.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Sed diam nonummy</a>
                                        <span class="price">$67</span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img3.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Feugiat nulla facilisis</a>
                                        <span class="price">$300</span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img4.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Lorem ipsum dolor sit</a>
                                        <span class="price">$149</span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img5.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Sed diam nonummy</a>
                                        <span class="price">$90</span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img6.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Praesent luptatum zzril</a>
                                        <span class="price">$169</span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img7.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Lorem ipsum dolor sit</a>
                                        <span class="price">$79</span>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="product-item">
                                        <div class="carousel-thumb">
                                            <img src="${pageContext.request.contextPath}/resources/assets/img/product/img8.jpg" alt="">
                                            <div class="overlay">
                                                <a href="ads-details.html"><i class="fa fa-link"></i></a>
                                            </div>
                                        </div>
                                        <a href="ads-details.html" class="item-name">Sed diam nonummy</a>
                                        <span class="price">$149</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <div class="features">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="features-box wow fadeInDownQuick" data-wow-delay="0.3s">
                                <div class="features-icon">
                                    <i class="fa fa-book">
                                    </i>
                                </div>
                                <div class="features-content">
                                    <h4>
                                        Full Documented
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo aut magni perferendis repellat rerum assumenda facere.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="features-box wow fadeInDownQuick" data-wow-delay="0.6s">
                                <div class="features-icon">
                                    <i class="fa fa-paper-plane"></i>
                                </div>
                                <div class="features-content">
                                    <h4>
                                        Clean & Modern Design
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo aut magni perferendis repellat rerum assumenda facere.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="features-box wow fadeInDownQuick" data-wow-delay="0.9s">
                                <div class="features-icon">
                                    <i class="fa fa-map"></i>
                                </div>
                                <div class="features-content">
                                    <h4>
                                        Great Features
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo aut magni perferendis repellat rerum assumenda facere.
                                    </p>
                                </div>
                            </div>
                        </div>                       
                    </div>
                </div>
            </div>

        </div>

     


        <footer>

            <section class="footer-Content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-delay="0">
                            <div class="widget">
                                <h3 class="block-title">About us</h3>
                                <div class="textwidget">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis tincidunt est, et euismod purus suscipit quis. Etiam euismod ornare elementum. Sed ex est, consectetur eget facilisis sed, auctor ut purus.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-delay="0.5">
                            <div class="widget">
                                <h3 class="block-title">Useful Links</h3>
                                <ul class="menu">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Categories</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Left Sidebar</a></li>
                                    <li><a href="#">Pricing Plans</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Contact</a></li>
                                    <li><a href="#">Full Width Page</a></li>
                                    <li><a href="#">Terms of Use</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-delay="1s">
                            <div class="widget">
                                <h3 class="block-title">Latest Tweets</h3>
                                <div class="twitter-content clearfix">
                                    <ul class="twitter-list">
                                        <li class="clearfix">
                                            <span>
                                                Platform to Download and Submit #Bootstrap Templates via @ProductHunt @GrayGrids
                                                <a href="#">http://t.co/cLo2w7rWOx</a>
                                            </span>
                                        </li>
                                        <li class="clearfix">
                                            <span>
                                                Introducing Bootstrap 4 Features: What?s new, What?s gone!
                                                <a href="#">http://t.co/cLo2w7rWOx</a>
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12 wow fadeIn" data-wow-delay="1.5s">
                            <div class="widget">
                                <h3 class="block-title">Random Ads</h3>
                                <ul class="featured-list">
                                    <li>
                                        <img alt="" src="${pageContext.request.contextPath}/resources/assets/img/featured/img1.jpg">
                                        <div class="hover">
                                            <a href="#"><span>$49</span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <img alt="" src="${pageContext.request.contextPath}/resources/assets/img/featured/img2.jpg">
                                        <div class="hover">
                                            <a href="#"><span>$49</span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <img alt="" src="${pageContext.request.contextPath}/resources/assets/img/featured/img3.jpg">
                                        <div class="hover">
                                            <a href="#"><span>$49</span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <img alt="" src="${pageContext.request.contextPath}/resources/assets/img/featured/img4.jpg">
                                        <div class="hover">
                                            <a href="#"><span>$49</span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <img alt="" src="${pageContext.request.contextPath}/resources/assets/img/featured/img5.jpg">
                                        <div class="hover">
                                            <a href="#"><span>$49</span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <img alt="" src="${pageContext.request.contextPath}/resources/assets/img/featured/img6.jpg">
                                        <div class="hover">
                                            <a href="#"><span>$49</span></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <div id="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="site-info pull-left">
                                <p>All copyrights reserved @ 2016 - Designed by <a href="http://localhost:8080/Advertisement_System/admin#/main">Admin</a></p>
                            
                            </div>
                            <div class="bottom-social-icons social-icon pull-right">
                                <a class="facebook" target="_blank" href="http://localhost:8084/Advertisement_System/admin"><i class="fa fa-facebook"></i></a>
                                <a class="twitter" target="_blank" href="https://twitter.com/GrayGrids"><i class="fa fa-twitter"></i></a>
                                <a class="dribble" target="_blank" href="https://dribbble.com/"><i class="fa fa-dribbble"></i></a>
                                <a class="flickr" target="_blank" href="https://www.flickr.com/"><i class="fa fa-flickr"></i></a>
                                <a class="youtube" target="_blank" href="https://youtube.com/"><i class="fa fa-youtube"></i></a>
                                <a class="google-plus" target="_blank" href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a>
                                <a class="linkedin" target="_blank" href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </footer>


        <a href="#" class="back-to-top">
            <i class="fa fa-angle-up"></i>
        </a>

        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/material.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/material-kit.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.parallax.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/wow.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.counterup.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/waypoints.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jasny-bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/form-validator.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/contact-form-script.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.themepunch.revolution.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.themepunch.tools.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-select.min.js"></script>
    </body>

    <!-- Mirrored from demo.graygrids.com/themes/classix/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Apr 2017 14:01:51 GMT -->
</html>