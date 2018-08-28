
        <div ng-controller="AdminController as adminCtrl">
            <center>
            <h1>  </h1>
            <form name="adminForm" method="POST">
                <table>
                    <tr>
                        <td colspan="2">
                            <div ng-if="adminCtrl.flag !== 'edit'">
                                <h3> Add New Admin </h3> 
                            </div>
                            <div ng-if="adminCtrl.flag === 'edit'">
                                <h3> Update Admin for ID: {{ adminCtrl.admin.adminId}} </h3> 
                            </div> 
                        </td>
                    </tr>
                    
                    <tr>
                        
                        <td>Admin Name: </td> 
                        
                        <td>
                            <input type="text" name="adminName" ng-model="adminCtrl.admin.adminName" required/> 
                            <span ng-show="adminForm.adminName.$error.required" class="msg-val"> Admin Name is required.</span> 
                        </td>
                        
                    </tr>
                    
                    <tr>
                        
                        <td>Admin Email </td> 
                        <td> 
                            <input type="text" name="adminEmail" ng-model="adminCtrl.admin.adminEmail" required/> 
                            <span ng-show="adminForm.adminEmail.$error.required" class="msg-val">Email is required.</span> 
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td>Admin Password </td> 
                        <td> 
                            <input type="text" name="adminPassword" ng-model="adminCtrl.admin.adminPassword" required/> 
                            <span ng-show="adminForm.adminPassword.$error.required" class="msg-val">Password is required.</span> 
                        </td>
                    </tr>
                    
                    <tr>
                        
                        <td colspan="2"> 
                            <span ng-if="adminCtrl.flag === 'created'" class="msg-success"> Admin successfully added.</span>
                            <span ng-if="adminCtrl.flag === 'failed'" class="msg-val"> Admin already exists.</span> 
                        </td>
                        
                    </tr>
                    
                    <tr>
                        <td colspan="2">
                            
                            <div ng-if="adminCtrl.flag !== 'edit'">  
                                <input  type="submit" ng-click="adminCtrl.addAdmin()" value="Add Admin"/> 
                                <input type="button" ng-click="adminCtrl.reset()" value="Reset"/>
                            </div>
                            <div ng-if="adminCtrl.flag === 'edit'">
                                <input  type="submit" ng-click="adminCtrl.updateAdminDetail()" value="Update Admin"/> 	
                                <input type="button" ng-click="adminCtrl.cancelUpdate()" value="Cancel"/>				   
                            </div> 
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"> 
                            <span ng-if="adminCtrl.flag === 'deleted'" class="msg-success"> Admin successfully deleted.</span>
                        </td>
                    </tr>
                </table>     
            </form>
            
            <table>
                <tr>
                    <th>Admin Id</th> 
                    <th>Admin Name</th> 
                    <th>Admin Email</th> 
                    <th>Action</th>
                </tr>
                <tr ng-repeat="row in adminCtrl.admins">
                    <td>
                        <span ng-bind="row.adminId"></span>
                    </td>
                    <td>
                        <span ng-bind="row.adminName"></span>
                    </td>
                    <td>
                        <span ng-bind="row.adminEmail"></span>
                    </td>
<!--                    <td>
                        <span ng-bind="row.adminPassword"></span>
                    </td>-->
                    <td>
                        <input type="button" ng-click="adminCtrl.deleteAdmin(row.adminId)" value="Delete"/>
                        <input type="button" ng-click="adminCtrl.editAdmin(row.adminId)" value="Edit"/>
                        <span ng-if="adminCtrl.flag === 'updated' && row.adminId === adminCtrl.updatedAdminId" class="msg-success">Admin successfully updated.</span> 
                    </td> 
                </tr>	
            </table>
            </center>
        </div>
