
        <div ng-controller="CategoryController as categoryCtrl">
            <center>
            <h1>  </h1>
            <form name="categoryForm" method="POST">
                <table>
                    <tr>
                        <td colspan="2">
                            <div ng-if="categoryCtrl.flag !== 'edit'">
                                <h3> Add New Category </h3> 
                            </div>
                            <div ng-if="categoryCtrl.flag === 'edit'">
                                <h3> Update Category for ID: {{ categoryCtrl.category.categoryId}} </h3> 
                            </div> 
                        </td>
                    </tr>
                    
                    <tr>
                        
                        <td>Category Name: </td> 
                        <td>
                            <input type="text" name="categoryName" ng-model="categoryCtrl.category.categoryName" required/> 
                            <span ng-show="categoryForm.categoryName.$error.required" class="msg-val"> Category Name is required.</span> 
                        </td>  
                    </tr>
                    <tr> 
                        <td colspan="2"> 
                            <span ng-if="categoryCtrl.flag === 'created'" class="msg-success"> Category successfully added.</span>
                            <span ng-if="categoryCtrl.flag === 'failed'" class="msg-val"> Category already exists.</span> 
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2">  
                            <div ng-if="categoryCtrl.flag !== 'edit'">  
                                <input  type="submit" ng-click="categoryCtrl.addCategory()" value="Add Category"/> 
                                <input type="button" ng-click="categoryCtrl.reset()" value="Reset"/>
                            </div>
                            <div ng-if="categoryCtrl.flag === 'edit'">
                                <input  type="submit" ng-click="categoryCtrl.updateCategoryDetail()" value="Update Category"/> 	
                                <input type="button" ng-click="categoryCtrl.cancelUpdate()" value="Cancel"/>				   
                            </div> 
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"> 
                            <span ng-if="categoryCtrl.flag === 'deleted'" class="msg-success"> Category successfully deleted.</span>
                        </td>
                    </tr>
                </table>     
            </form>
            
            <table>
                <tr>
                    <th>Category Id</th> 
                    <th>Category Name</th> 
                    <th>Action</th>
                    
                </tr>
                <tr ng-repeat="row in categoryCtrl.categories">
                    <td>
                        <span ng-bind="row.categoryId"></span>
                    </td>
                    <td>
                        <span ng-bind="row.categoryName"></span>
                    </td>
                    <td>
                        <input type="button" ng-click="categoryCtrl.deleteCategory(row.categoryId)" value="Delete"/>
                        <input type="button" ng-click="categoryCtrl.editCategory(row.categoryId)" value="Edit"/>
                        <span ng-if="categoryCtrl.flag === 'updated' && row.categoryId === categoryCtrl.updatedCategoryId" class="msg-success">Category successfully updated.</span> 
                    </td> 
                </tr>	
            </table>
            </center>
        </div>
