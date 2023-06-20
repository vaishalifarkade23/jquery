<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Addition of Numbers</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">  
 </script>
 <script>
 	$(document).ready(function () {
		$("#add").click(function () {
			var x=parseInt($("#n1").val());//to get n set the value on textfield
			var y=parseInt($("#n2").val());
			
			var res=x+y;
			$("#result").val(res);
			//$("#pid").text(res);//set the value in htmlresponse (paragraph)
			$("#pid").html(res);//it can also get the value in html 
		});
	});
 
 </script>
</head>
<body>
 <div class="cotainer">
         <!-- if i add form tag here then result will submit n vanish suddenly -->
          <label>Num1:</label>
          <input type="text" id="n1" name="n1"><br><br>
          <label>Num2:</label>
          <input type="text" id="n2" name="n2"><br>
          <button id="add" class="btn btn-success" type="submit">ADD</button><br>
          <label>Result:</label>
          <input type="text" id="result" name="result"><br>
          <p id="pid"></p>
     
     </div>
</body>
</html>