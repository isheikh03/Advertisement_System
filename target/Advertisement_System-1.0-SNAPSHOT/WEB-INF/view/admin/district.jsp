
<div ng-controller="DistrictController as districtCtrl">
    <center>
    <h1>  </h1>
    <form name="districtForm" method="POST">
        <table>
            <tr>
                <td colspan="2">
                    <div ng-if="districtCtrl.flag !== 'edit'">
                        <h3> Add New District </h3> 
                    </div>
                    <div ng-if="districtCtrl.flag === 'edit'">
                        <h3> Update District for ID: {{ districtCtrl.district.districtId}} </h3> 
                    </div> 
                </td>
            </tr>
            <tr>

                <td>Division ID: </td> 
                <td>
                    <input type="text" name="divisionId" ng-model="districtCtrl.district.division.divisionId" required/> 
                    <!--<span ng-show="districtForm.divisionId.$error.required" class="msg-val"> Division ID is required.</span>--> 
                </td>  
            </tr>

            <tr>

                <td>District Name: </td> 
                <td>
                    <input type="text" name="districtName" ng-model="districtCtrl.district.districtName" required/> 
                    <span ng-show="districtForm.districtName.$error.required" class="msg-val"> District Name is required.</span> 
                </td>  
            </tr>
            <tr> 
                <td colspan="2"> 
                    <span ng-if="districtCtrl.flag === 'created'" class="msg-success"> District successfully added.</span>
                    <span ng-if="districtCtrl.flag === 'failed'" class="msg-val"> District already exists.</span> 
                </td>
            </tr>

            <tr>
                <td colspan="2">  
                    <div ng-if="districtCtrl.flag !== 'edit'">  
                        <input  type="submit" ng-click="districtCtrl.addDistrict()" value="Add District"/> 
                        <input type="button" ng-click="districtCtrl.reset()" value="Reset"/>
                    </div>
                    <div ng-if="districtCtrl.flag === 'edit'">
                        <input  type="submit" ng-click="districtCtrl.updateDistrictDetail()" value="Update District"/> 	
                        <input type="button" ng-click="districtCtrl.cancelUpdate()" value="Cancel"/>				   
                    </div> 

                </td>
            </tr>
            <tr>
                <td colspan="2"> 
                    <span ng-if="districtCtrl.flag === 'deleted'" class="msg-success"> District successfully deleted.</span>
                </td>
            </tr>
        </table>     
    </form>

    <table>
        <tr>
            <th>District Id</th> 
            <th>Division Id</th> 
            <th>District Name</th> 
            <th>Action</th> 

        </tr>
        <tr ng-repeat="row in districtCtrl.districts">
            <td>
                <span ng-bind="row.districtId"></span>
            </td>
            <td>
                <span ng-bind="row.division.divisionId"></span>
            </td>
            <td>
                <span ng-bind="row.districtName"></span>
            </td>
            <td>
                <input type="button" ng-click="districtCtrl.deleteDistrict(row.districtId)" value="Delete"/>
                <input type="button" ng-click="districtCtrl.editDistrict(row.districtId)" value="Edit"/>
                <span ng-if="districtCtrl.flag === 'updated' && row.districtId === districtCtrl.updatedDistrictId" class="msg-success">District successfully updated.</span> 
            </td> 
        </tr>	
    </table>
    </center>
</div>
