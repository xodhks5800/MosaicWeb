<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
   <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
   <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(document).ready(function() {
		
		$('.btn').on('clilek',function() {
			$('#result').html($(this).html());
			
			event.prevantDefault();
		});
	});

</script>

</head>


<body>
<p id="result"> 

   <ol>
   	<li><button class="btn btn-default">defult</button></li>
   	<li><button class="btn btn-primary">primary</button></li>
   	<li><button class="btn btn-success" >success</button></li>
   	<li><button class="btn btn-warning" >warning</button></li>
   	<li><button class="btn btn-info">info</button></li>
   	<li><a href="/user/login" class="btn btn-info">info</a></li>   	   
   
   </ol>
</body>
</html>