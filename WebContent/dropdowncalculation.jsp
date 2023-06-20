<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">  
 </script>
 <script>
          $(document).ready(function () {
        	 $("#dropdown").change(function () {
				var a=parseInt($("#n1").val());
				var b=parseInt($("#n2").val());
				var select=$("#dropdown").val();
				if(select=="Addition")
					var res=a+b;
				else if(select=="Substraction")	
					var res=a-b;
				else if(select=="Multiplication")	
					var res=a*b;
				else 
					var res=a/b;
				$("#result").val(res);
			});
        		 
        	 });
          
          </script>
 
</head>
<body>
		<div class="cotainer">
          <form action="#">
          <label>Num1:</label>
          <input type="text" id="n1" name="n1"><br><br>
          <label>Num2:</label>
          <input type="text" id="n2" name="n2"><br><br>
          <select id=dropdown class='form-control'>
          <option value='Addition'>Addition</option>
          <option value='Substraction'>Substraction</option>
          <option value='Multiplication'>Multiplication</option>
          <option value='Division'>Division</option>
          </select><br><br>
          <label>Result:</label>
          <input type="text" id="result" name="result"><br>
          </form>
          </div>
</body>
</html>