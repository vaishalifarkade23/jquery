<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">  
 </script>  
 <script type="text/javascript">
   $(document).ready(function(){
	  $("#pid").css("background-color","yellow");
	  $("#pid1").css("background-color","pink");
	  
	  $("#hide").click(function () {
		$("#pid1").hide();
	  });
	  
	  $("#show").click(function () {
		$("#pid1").show();  
	  });
	  
	  $("#toggle").click(function (){
		 $("#pid1").toggle(); 
	  });
	  
	  $("button").click(function(){    
	        $("div.d1").toggle(1500);    
	    }); 
	  
	  $("#fadein").click(function(){  
	        $("#div1").fadeIn();  
	        $("#div2").fadeIn("slow");  
	        $("#div3").fadeIn(3000);  
	    }); 
	  
	  $("#fadeout").click(function(){  
	        $("#div111").fadeOut();  
	        $("#div222").fadeOut("slow");  
	        $("#div333").fadeOut(3000);  
	    }); 
	  
	    $("#fadetoggle").click(function(){  
	        $("#div11").fadeToggle();  
	        $("#div22").fadeToggle("slow");  
	        $("#div33").fadeToggle(3000);  
	    });  
	    
   });
 </script>
</head>
<body>
	<p id="pid">hello java</p>
	<p id="pid1">  
	<b>This is a little poem: </b><br/>  
	Twinkle, twinkle, little star<br/>  
	How I wonder what you are<br/>  
	Up above the world so high<br/>  
	Like a diamond in the sky<br/>  
	Twinkle, twinkle little star<br/>  
	How I wonder what you are  
	</p>  
		<button id="hide">Hide</button>  
		<button id="show">Show</button> 
		<button id="toggle">Toggle</button> 
		
		<!-- toggle -->
		 
<div class="d1" style="border:1px solid black;padding:10px;width:250px">    
<p><b>This is a little poem: </b><br/>      
Twinkle, twinkle, little star<br/>      
How I wonder what you are<br/>      
Up above the world so high<br/>      
Like a diamond in the sky<br/>      
Twinkle, twinkle little star<br/>      
How I wonder what you are</p>     
</div> 
<button>Toggle</button>       
		
		<!-- fadein -->    
		<p>See the fadeIn() method example with different parameters.</p>  

<div id="div1" style="width:80px;height:80px;display:none;background-color:red;"></div><br>  
<div id="div2" style="width:80px;height:80px;display:none;background-color:green;"></div><br>  
<div id="div3" style="width:80px;height:80px;display:none;background-color:blue;"></div><br>
<button id="fadein">Fadeout</button><br><br>  

<!-- fadeout() -->
<p>Fadeout check</p>  

<div id="div111" style="width:80px;height:80px;background-color:red;"></div><br>  
<div id="div222" style="width:80px;height:80px;background-color:green;"></div><br>  
<div id="div333" style="width:80px;height:80px;background-color:blue;"></div> <br>
<button id="fadeout">FadeOut</button><br><br>  

<!-- fadeToggle -->

<p>See the fadeToggle() method example with different parameters.</p>  
<div id="div11" style="width:80px;height:80px;background-color:red;"></div><br>  
<div id="div22" style="width:80px;height:80px;background-color:green;"></div><br>  
<div id="div33" style="width:80px;height:80px;background-color:blue;"></div> <br>
<button id="fadetoggle">fadeToggle</button><br><br>  

</body>
</html>