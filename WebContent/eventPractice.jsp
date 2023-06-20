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
/* $(document).ready(function(){
	 ////for first name
	 //$("#t1").focus(function () {
		//$("#s1")html("Enter your First name")
	//})
	// $("#t1").blur(function () {
		// var str=$("#t1").val();
		//if(str.length <3){
			//$("#s1").html("minimum 3 cha required")
			//$("#t1").css("border-color","red");
		//}
		//else{
			//$("#s1").html("ok")
		//}
//	})
	 
	 ////for lastname
	/// $("#t2").focus(function () {
		//	$("#s2")html("Enter your First name")
		//})
		// $("#t2").blur(function () {
		//	 var str=$("#t2").val();
			//if(str.length<3){
			//	$("#s2").html("minimum 3 cha required")
				$("#t2").css("border-color","red");
			}
			else{
				$("#s2").html("ok")
			}
		})
		 
	 
 });*/
 </script>
 
 <script>
$(document).ready(function() {
	$('#t1').focus(function(){
	$('#d1').html('Enter your name');
	});

	$('#t2').focus(function(){
	$('#d1').html('Enter your email');
	});
	
	$("#ckb").change(function(){
	var ckb_status = $("#ckb").prop('checked');
	 if(ckb_status){$('#t8').prop('type', 'text');}// if checked
	 else{$('#t8').prop('type', 'password');} // if not checked 
	});
	
	$("#city").change(function(){ // change function of listbox
	var sel = $("#city").val(); // reading listbox selection
	$("#t5").attr('value',sel); // keeping in a text box
	});
	
	
	$("input:radio[name=options]").click(function() {
    $("#d1").css("background-color", "yellow"); // change the color of the background
     $('#d2').html($(this).val());
	})
	
	$('input[type="checkbox"]').change(function(){
		var total_checked=  $("input[type='checkbox']:checked").length 
		
		var total_checked=  $("input[type='checkbox']:checked").length 
	});
	

});
</script>

</head>
<body>
<div class="container-fluid">
<form>
Name:<input type=text name=fname id=t1><div id=d1 style="background-color:yellow;">Enter your Details</div>


Email: <input type=text name=fname id=t2><br>

Password  
<input type=password name=t8 id=t8 class='form-control'>
<input type=checkbox id='ckb'>show text<br>


<select id=city class='form-control'>
<option value='Nagpur'>Nagpur</option>
<option value='Pune'>Pune</option>
<option value='Mumbai'>Mumbai</option></select><br>


Gender:<input type='radio' name='options' id='opd1' value='option1'>Male
       <input type='radio' name='options' id='opd2' value='option2'>Female<br>
       
  Courses:<input type=checkbox id='ckb4' value=Java>Java
		<input type=checkbox id='ckb5' value=css>css
		<input type=checkbox id='ckb6' value=Html>Html
       <input type=checkbox id='ckb7' value=Pythen>Pythen <br>
       
       
<button id="Submit">Submit</button>
  
</form>
</div>
</body>
</html>