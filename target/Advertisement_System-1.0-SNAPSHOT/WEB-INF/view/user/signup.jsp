




<div class="page-header" style="background: url(assets/img/banner1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb-wrapper">
                    <h2 class="page-title">Join Us</h2>
                </div>
            </div>
        </div>
    </div>
</div>


<section id="content">
    <div ng-controller="UserController as userCtrl" class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <div class="page-login-form box">
                    <h3>
                        Register
                    </h3>
                    <form name="userForm" method="POST" role="form" class="login-form">
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-user"></i>
                                <input type="text" id="sender-email" class="form-control" name="userName" placeholder="Username" ng-model="userCtrl.user.userName" required>
                                <!--<span ng-show="userForm.userName.$error.required" class="msg-val"> Admin Name is required.</span>-->
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-envelope"></i>
                                <input type="text" id="sender-email" class="form-control" name="email" placeholder="Email Address" ng-model="userCtrl.user.userEmail" required>
                                <!--<span ng-show="userForm.email.$error.required" class="msg-val">Email is required.</span>--> 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-unlock-alt"></i>
                                <input type="password" class="form-control" placeholder="Password" name="password" ng-model="userCtrl.user.userPassword" required>
                                <!--<span ng-show="userForm.password.$error.required" class="msg-val">Password is required.</span>-->
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-unlock-alt"></i>
                                <input type="password" class="form-control" placeholder="Retype Password">
                            </div>
                        </div>
                        <div class="checkbox">
                            <input type="checkbox" id="remember" name="rememberme" value="forever" style="float: left;">
                            <label for="remember">By creating account you agree to our Terms & Conditions</label>

                        </div>
                        <div ng-if="userCtrl.flag !== 'edit'">  
                            <button class="btn btn-common log-btn" type="submit" ng-click="userCtrl.addUser()"><a href="#/">Register</a></button> 
                            <input type="button" ng-click="userCtrl.reset()" value="Reset" style="width: 120px; background: yellow;"/>
                        </div>                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<a href="#" class="back-to-top">
    <i class="fa fa-angle-up"></i>
</a>