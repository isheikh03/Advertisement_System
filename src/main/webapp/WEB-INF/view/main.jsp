<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <meta name="author" content="Clasified">
        <meta name="generator" content="Wordpress! - Open Source Content Management">
        <title>ClassiX</title>

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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/custome.css">
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/angular.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/angular-resource.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/angular-route.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/underscore-min.js"></script>
   
        <script src="${pageContext.request.contextPath}/resources/angularjs/module.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/constants.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/underscoreModule.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/app1.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/user.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/postInfo.js"></script>
<!--        <style>
            .navbar_design{
                background:#EAEAEA;
            }
            .min-height{
                min-height:510px;
            }

        </style>		-->
    </head>
    <body ng-app="myApp">

        <div class="header">
            <nav class="navbar navbar-default navbar-fixed-top main-navigation navbar_design" role="navigation">
                <div class="container">
                    <div class="navbar-header">

                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand logo" href="#/"><img src="${pageContext.request.contextPath}/resources/assets/img/logo.png" alt=""></a>
                    </div>


                    <div class="collapse navbar-collapse" id="navbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#login"><i class="lnr lnr-enter"></i> Login</a></li>
                            <li><a href="#signup"><i class="lnr lnr-user"></i> Signup</a></li>
                            <li class="postadd">
                                <a class="btn btn-danger btn-post" href="#post-ads"><span class="fa fa-plus-circle"></span> Post an Ad</a>
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
                    <li><a href="#/">Home</a></li>
                    <li><a href="#about">About us</a></li>
                    <li><a href="#ads-details">Ads details</a></li>
                    <li><a href="#u_house">House</a></li>
                    <li><a href="#u_office">Office</a></li>
                    <li><a href="#u_car">Car</a></li>
                    <li><a href="#u_others">Others</a></li>
                    <li><a href="#post-ads">Post ads</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="#forgot-password">Forgot-password</a></li>
                    <li><a href="#signup">Signup</a></li>
                    <li><a href="#login">Login</a></li>
                </ul> 
            </div>  
            <div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite" data-wow-duration="500ms" data-toggle="offcanvas" data-target=".navmenu">
                <p><i class="fa fa-file-text-o"></i> All Pages</p>
            </div>
        </div>


        <div ng-view class="min-height">

        </div>



        <a href="#" class="back-to-top">
            <i class="fa fa-angle-up"></i>
        </a>


        <footer>
            <div id="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="site-info pull-left">
                                <p>All copyrights reserved @ 2017 - Developed by S_A_M_G_N</p>
                                <p><a href="http://localhost:8084/Advertisement_System/admin">Admin</a></p>
                            </div>
                            <div class="bottom-social-icons social-icon pull-right">
                                <a class="facebook" target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                <a class="twitter" target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                <a class="dribble" target="_blank" href="#"><i class="fa fa-dribbble"></i></a>
                                <a class="flickr" target="_blank" href="#"><i class="fa fa-flickr"></i></a>
                                <a class="youtube" target="_blank" href="#"><i class="fa fa-youtube"></i></a>
                                <a class="google-plus" target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                <a class="linkedin" target="_blank" href="#"><i class="fa fa-linkedin"></i></a>
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
</html>