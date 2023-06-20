<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div id="d"></div>
<button id="btn">Reload File</button>
<input type="text" value="" id="txt">
<hr>
<h2>Use of Get method</h2>
<p id="pid"></p>
<button id="btn1">Click for response using get method</button>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn").click(function(){
			$("#d").load("test.txt");
		});
		
		/*$("#btn1").click(function(){
			$.get("backend.jsp", function(data, status){
				alert("Data : "+data+" Status : "+status);
				$("#pid").text(data);
			});
		});*/
		
		$("#btn1").click(function(){
			var name = $("#txt").val();
			$.get("backend.jsp", {uname : name}, function(data, status){
				$("#pid").text(data);
			});
		});
		
	});
</script>
</body>
</html>