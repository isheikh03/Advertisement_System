
<section id="content" ng-controller="PostInfoController as postInfoCtrl">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-9 col-md-offset-2">
                <div class="page-ads box">
                    <h2 class="title-2">
                        Post An Advertisement
                    </h2>
                    <form class="form-ad" name="postInfoForm" method="POST">
                        <div class="form-group">
                            <label class="control-label">Category</label>
                            <select name="category-group" id="category-group" class="form-control">
                                <option value="0" selected="selected"> Select a category... </option>

                                <option value="Cars"> Cars Rent </option>
                                <option value="House"> House Rent </option>
                                <option value="Office"> Office Rent </option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Ad title</label>
                            <input name="title" placeholder="Ad title" class="form-control input-md" type="text" ng-model="postInfoCtrl.postInfo.title" required />
                            <span class="help-block">A great title needs at least 60 characters. </span>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="textarea">Describe ad </label>
                            <textarea class="form-control" id="textarea" name="desc" ng-model="postInfoCtrl.postInfo.desc" required >Describe what makes your ad unique</textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Division</label>
                            <select name="category-group" id="category-group" class="form-control">
                                <option value="0" selected="selected"> Select a Division... </option>

                                <option value="Dhaka"> Dhaka  </option>
                                <option value="Chittagong"> Chittagong </option>
                                <option value="Rajshahi"> Rajshahi </option>
                                <option value="Khulna"> Khulna  </option>
                                <option value="Barisal"> Barisal </option>
                                <option value="Sylhet"> Sylhet </option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">District</label>
                            <select name="category-group" id="category-group" class="form-control">
                                <option value="0" selected="selected"> Select a District... </option>

                                <option value="Dhaka"> Dhaka  </option>
                                <option value="Munshigong"> Munshigong </option>
                                <option value="Manikgonj"> Manikgonj </option>
                                <option value="Chittagong"> Chittagong </option>
                                <option value="Rajshahi"> Rajshahi </option>
                                <option value="Khulna"> Khulna  </option>
                                <option value="Barisal"> Barisal </option>
                                <option value="Sylhet"> Sylhet </option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="textarea">Price</label>
                            <div class="form-inline">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" id="price" name="price" class="form-control" placeholder="placeholder" ng-model="postInfoCtrl.postInfo.price" required/> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Select An images</label>
                            <div class="mb15">
                                <div class="input-group ">
                                    <div tabindex="-1" class="form-control file-caption">
                                        <div style="width: 239px;" class="file-caption-name"></div>
                                    </div>
                                    <div class="input-group-btn">


                                        <div class="btn btn-primary btn-file">
                                            <i class="glyphicon glyphicon-folder-open"></i> &nbsp; Select an Image
                                            <input id="input-upload-img1" class="file" data-preview-file-type="text" type="file">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <h2 class="title-2">
                            Contact Information 
                        </h2>
                        <div class="form-group">
                            <label class="control-label" for="textarea">Name</label>
                            <input type="text" class="form-control" name="name" placeholder="Your Name" ng-model="postInfoCtrl.postInfo.name" required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="textarea">Email</label>
                            <input type="text" class="form-control" name="email" placeholder="Your Email" ng-model="postInfoCtrl.postInfo.email" required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="textarea">Phone Number</label>
                            <input type="text" class="form-control" placeholder="Phone Number" name="phone" ng-model="postInfoCtrl.postInfo.phone" required>

                        </div>

                        <div class="form-group">
                            <label class="control-label" for="seller-Location">Location</label>
                            <select id="Location" name="Location" class="form-control">
                                <option value="1"> Dhaka</option>
                                <option value="2">Chittagong</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <div class="well" ng-if="adminCtrl.flag !== 'edit'">
                                <a href="http://localhost:8080/Advertisement_System/#/u_house" style="display: inline-block;
                                   padding: 12px 15px; border: 1px solid #4CAF50; background: #4CAF50;color: #FFF">Submit</a>
<!--                                   <input id="myButton"  type="submit" class="btn btn-common" ng-click="adminCtrl.addPostInfo()" value="Submit"/>  -->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>




<script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "www.google.com";
    };
</script>


<a href="#" class="back-to-top">
    <i class="fa fa-angle-up"></i>
</a>