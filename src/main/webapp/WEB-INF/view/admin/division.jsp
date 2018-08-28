
<div ng-controller="DivisionController as divisionCtrl">
    <center>
    <h1>  </h1>
    <form name="divisionForm" method="POST">
        <table>
            <tr>
                <td colspan="2">
                    <div ng-if="divisionCtrl.flag !== 'edit'">
                        <h3> Add New Division </h3> 
                    </div>
                    <div ng-if="divisionCtrl.flag === 'edit'">
                        <h3> Update Division for ID: {{ divisionCtrl.division.divisionId}} </h3> 
                    </div> 
                </td>
            </tr>

            <tr>

                <td>Division Name: </td> 
                <td>
                    <input type="text" name="divisionName" ng-model="divisionCtrl.division.divisionName" required/> 
                    <span ng-show="divisionForm.divisionName.$error.required" class="msg-val"> Division Name is required.</span> 
                </td>  
            </tr>
            <tr> 
                <td colspan="2"> 
                    <span ng-if="divisionCtrl.flag === 'created'" class="msg-success"> Division successfully added.</span>
                    <span ng-if="divisionCtrl.flag === 'failed'" class="msg-val"> Division already exists.</span> 
                </td>
            </tr>

            <tr>
                <td colspan="2">  
                    <div ng-if="divisionCtrl.flag !== 'edit'">  
                        <input  type="submit" ng-click="divisionCtrl.addDivision()" value="Add Division"/> 
                        <input type="button" ng-click="divisionCtrl.reset()" value="Reset"/>
                    </div>
                    <div ng-if="divisionCtrl.flag === 'edit'">
                        <input  type="submit" ng-click="divisionCtrl.updateDivisionDetail()" value="Update Division"/> 	
                        <input type="button" ng-click="divisionCtrl.cancelUpdate()" value="Cancel"/>				   
                    </div> 

                </td>
            </tr>
            <tr>
                <td colspan="2"> 
                    <span ng-if="divisionCtrl.flag === 'deleted'" class="msg-success"> Division successfully deleted.</span>
                </td>
            </tr>
        </table>     
    </form>

    <table>
        <tr>
            <th>Division Id</th> 
            <th>Division Name</th> 
            <th>Action</th> 

        </tr>
        <tr ng-repeat="row in divisionCtrl.divisions">
            <td>
                <span ng-bind="row.divisionId"></span>
            </td>
            <td>
                <span ng-bind="row.divisionName"></span>
            </td>
            <td>
                <input type="button" ng-click="divisionCtrl.deleteDivision(row.divisionId)" value="Delete"/>
                <input type="button" ng-click="divisionCtrl.editDivision(row.divisionId)" value="Edit"/>
                <span ng-if="divisionCtrl.flag === 'updated' && row.divisionId === divisionCtrl.updatedDivisionId" class="msg-success">Division successfully updated.</span> 
            </td> 
        </tr>	
    </table>
    </center>
</div>
