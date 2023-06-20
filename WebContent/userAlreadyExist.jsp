<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>User Already Exist</title>
  </head>
  <body>
    
  <div>
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div class="col-md-12" style="border:thin solid black; padding:20px">
                        <form id="" class="form" action="#" method="post">
                            <h3 class="text-center text-info">Sign In Form</h3>
                            
                            <div class="form-group">
                                <label for="fullname" class="text-info">Full Name</label><br>
                                <input type="text" name="fullname"  id="fullname" class="form-control">
                            </div>
                            
                            <div class="form-group">
                                <label for="username" class="text-info">User Name</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                                <p id="pid"></p>
                            </div>
                            
                            <div class="form-group">
                                <label for="email" class="text-info">Email</label><br>
                                <input type="text" name="email" id="email" class="form-control">
                                <p id="pid1"></p>
                            </div>
                            
                            <div class="form-group">
                                <label for="password" class="text-info">Password</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            
                             <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                                
                        </form>
                        <table class="table" id="table" name="table">
                              </table>
                         <div class="form-group">
                                <button id="btn1" type="submit" class="btn btn-primary">View Table</button>
                                <p id="pid2"></p>
                            </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Blur function -->
<script>
	$(document).ready(function(){
		
		$("#username").blur(function(){
					var username = $("#username").val();
					//alert(username);
					
			$.get("userNameAlreadyExistServer.jsp",{user_name:username},function(data,status){
				//alert(data);
				$("#pid").text(data);
			});
			
		});
		
		$("#email").blur(function(){
			var email = $("#email").val();
			
			$.get("emailAlreadyExistServer.jsp", {e_mail : email}, function(data, status){
				$("#pid1").text(data);
			});
		});
		
		$("#btn1").click(function(){
			$.get("backendtable.jsp", function(data, status){
				$("#pid2").html(data);
			});
			
		});
		
		
	});
</script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>