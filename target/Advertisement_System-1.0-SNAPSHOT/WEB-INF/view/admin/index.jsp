<html>
<head>
<script src="assets/angular/angular.min.js"></script>
<script src="assets/angular/angular-route.js"></script>
<script src="assets/angular/app.js"></script>
</head>
<body ng-app="myApp">

<p>
	<a href="#/">my custome templete</a>
</p>

<a href="#adminreg">Admin Registration</a>
<a href="#area">Area</a>
<a href="#categories">categories</a>

<div ng-view style="background:yellow">
</div>


</body>
</html>