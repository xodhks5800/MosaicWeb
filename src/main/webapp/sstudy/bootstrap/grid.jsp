<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
<style type="text/css">
	.bbox {
		border: 1px solid red;
	}
</style>   
   
</head>
<body>
   <div class="container-fluid">
	   <div class="row">
					<!-- 화면사이즈에따라 xs sm lg 로 나눠진다 -->
	   	<div class="col-xs-4 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=one"></div>
	   	<div class="col-xs-2 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=two"></div>
	   	<div class="col-xs-2 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=three"></div>
	   	<div class="col-xs-2 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=four"></div>	   	
	   </div>
  	   <div class="row">
	   	<div class="col-sm-3 col-sm-2 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=one"></div>
	   	<div class="col-sm-3 col-sm-2 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=two"></div>
	   	<div class="col-sm-3 col-sm-2 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=three"></div>
	   	<div class="col-sm-3 col-sm-6 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=four"></div>	   	
	   </div>
	   <div class="row">
	   	<div class="col-xs-6 col-sm-3 col-lg-1 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=one"></div>
	   	<div class="col-xs-6 col-sm-3 col-lg-5 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=two"></div>
	   	<div class="col-xs-6 col-sm-3 col-lg-5 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=three"></div>
	   	<div class="col-xs-6 col-sm-3 col-lg-1 bbox"><img alt="xxx" src="http://www.placehold.it/100x100?text=four"></div>	   	
	   </div>
   </div>
</body>
</html>