<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<title>template.jsp</title>
 <script> 
    $(function(){
        var percent=0;
        $("#myButton").click(function(){
            if(percent>=100)return;
            percent += 10;
            $("#myProgress").css("width",percent+"%");
        });
        $("#myButton2").click(function(){
            if(percent>=100)return;
            percent -= 10;
            $("#myProgress").css("width",percent+"%");
        });
    });
    </script>

</head>
<body>
<div class="container">
	
	<ol>
    <li><div class="row">
        <button id="myButton" class="btn btn-primary">progress</button>
    </div></li>
    <li><div class="row">
        <button id="myButton2" class="btn btn-primary">progress</button>
    </div></li>
	</ol>
	</div>   
    <div class="row">
        <div class="progress progress-striped active">
          <div id="myProgress" class="progress-bar" style="width: 0%"></div>
        </div>    
    </div>
</div>
</body>
</html>