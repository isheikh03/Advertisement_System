<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Dashboard : Admin</title>

        <meta name="description" content="overview &amp; stats" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fonts.googleapis.com.css" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/ace-rtl.min.css" />

        <script src="${pageContext.request.contextPath}/resources/assets/js/ace-extra.min.js"></script>

        <style type="text/css">
            .my-custome-color{
                background: #222222;
            }


        </style>
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/angular.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/angular-resource.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/angular-route.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/lib/underscore-min.js"></script>
   
        <script src="${pageContext.request.contextPath}/resources/angularjs/module.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/constants.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/underscoreModule.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/app.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/admin.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/division.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/category.js"></script>
        <script src="${pageContext.request.contextPath}/resources/angularjs/district.js"></script>
     
    </head>

    <body class="no-skin" ng-app="myApp">
        <div id="navbar" class="navbar navbar-default ace-save-state my-custome-color">
            <div class="navbar-container ace-save-state" id="navbar-container">
                <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                    <span class="sr-only">Toggle sidebar</span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>

                    <span class="icon-bar"></span>
                </button>

                <div class="navbar-header pull-left">
                    <a href="#/" class="navbar-brand">
                        <small>
                            <i class="fa fa-user"></i>
                            WebApp
                        </small>
                    </a>
                </div>

                <div class="navbar-buttons navbar-header pull-right my-custome-color" role="navigation">
                    <ul class="nav ace-nav my-custome-color">

                        <li class="dropdown-modal my-custome-color">
                            <a data-toggle="dropdown" href="#welcome" class="dropdown-toggle">
                                <span class="user-info">
                                    <small>Welcome,</small>
                                    Admin
                                </span>

                                <i class="ace-icon fa fa-caret-down"></i>
                            </a>

                            <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                                <li>
                                    <a href="#">
                                        <i class="ace-icon fa fa-cog"></i>
                                        Settings
                                    </a>
                                </li>

                                <li>
                                    <a href="profile.html">
                                        <i class="ace-icon fa fa-user"></i>
                                        Profile
                                    </a>
                                </li>

                                <li class="divider"></li>

                                <li>
                                    <a href="#">
                                        <i class="ace-icon fa fa-power-off"></i>
                                        Logout
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div><!-- /.navbar-container -->
        </div>


        <div class="main-container ace-save-state" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.loadState('main-container')
                } catch (e) {
                }
            </script>

            <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
                <script type="text/javascript">
                    try {
                        ace.settings.loadState('sidebar')
                    } catch (e) {
                    }
                </script>

                <div class="sidebar-shortcuts" id="sidebar-shortcuts">


                    <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                        <span class="btn btn-success"></span>

                        <span class="btn btn-info"></span>

                        <span class="btn btn-warning"></span>

                        <span class="btn btn-danger"></span>
                    </div>
                </div><!-- /.sidebar-shortcuts -->

                <ul class="nav nav-list">
                    <li class="active">
                        <a href="#/">
                            <i class="menu-icon fa fa-tachometer"></i>
                            <span class="menu-text"> Admin Dashboard </span>
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-desktop"></i>
                            <span class="menu-text">
                                Advertisement Info
                            </span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="">
                                <a href="#house">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    House
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="">
                                <a href="#office">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Office
                                </a>

                                <b class="arrow"></b>
                            </li>
                            
                            <li class="">
                                <a href="#car">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Car
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="">
                                <a href="#others">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Others
                                </a>

                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>
                    <!-- my menu item -->
                    <li class="">
                        <a href="#adminreg">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> Admin Registration </span>
                        </a>

                        <b class="arrow"></b>
                    </li>	
                    <!-- my menu item -->
                    <li class="">
                        <a href="#categories">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> Categories </span>
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <!-- my menu item -->
                    <li class="">
                        <a href="#division">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> Division </span>
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <!-- my menu item -->
                    <li class="">
                        <a href="#district">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> District </span>
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <!-- my menu item -->
                    <li class="">
                        <a href="#area">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text"> Area </span>
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <!-- my menu item -->
                    <li class="">
                        <a href="http://localhost:8084/Advertisement_System/">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text">Front Page</span>
                        </a>
                        <b class="arrow"></b>
                    </li>
                    <!-- my menu item -->
<!--                    <li class="">
                        <a href="#postinfo">
                            <i class="menu-icon fa fa-list-alt"></i>
                            <span class="menu-text">Post Information</span>
                        </a>
                        <b class="arrow"></b>
                    </li>-->

                </ul><!-- /.nav-list -->	

            </div>

            <div ng-view>

            </div>

            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-2.1.4.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-ui.custom.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.ui.touch-punch.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easypiechart.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.sparkline.index.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.flot.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.flot.pie.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.flot.resize.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/ace-elements.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/assets/js/ace.min.js"></script>
    </body>
</html>