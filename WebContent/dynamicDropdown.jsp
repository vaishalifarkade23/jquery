<%@page import="java.sql.*"%>
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
    
    <script>
	$(document).ready(function ()
			{
		$("#country").change(function(event)
				{
				var cname=$("#country").val();
				$.get("dynamicState.jsp",{country:cname},function(data)
						{
					$("#state").html(data);	
					
				});
		});
	});
	</script>
	<script>
	$(document).ready(function ()
			{
		$("#state").change(function (event)
				{
			var ctname=$("#state").val();
			$.get("dynamicCity.jsp",{state:ctname},function(responsivetext)
					{
				$("#city").html(responsivetext);
			});
		});
		
	});
</script>

  </head>
  <body>
  <div class="container">
    <div class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div class="col-md-12" style="border:thin solid black; padding:20px">
                        <form id="" class="form" action="#" method="post">
                          
                            
                           <div class="form-group">
                         <select id="country" class="form-control" name="country">
			            <option value="">Select Country</option>
			             <% 
                                  
                                    try{
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp", "root", "");
                                        String sql = "select distinct country from dynamicdropdown";
                                        PreparedStatement  pst = con.prepareStatement(sql);
                                        ResultSet rs=pst.executeQuery();
                                        while(rs.next())
                                        {
                                            
                                            %>
                                            <option> <%=rs.getString("country")%></option>
                                      <% 
                                      }
                                      %>
                            </select>
                                    <%
                                    }
			             			catch(Exception e)
                                    {
                                        out.println(e.getMessage());
                                    }
                                    
                                    
                                    %>       
       
       <br>  
       <select id="state" class="form-control" name="state">
			<option value="">Select State</option>       
       </select> 
       <br>  
       <select id="city" class="form-control" name="city">
			<option value="">Select City</option>       
       </select> 
         
        
   </div>
</form>
</div>
</div>
</div>
</div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>