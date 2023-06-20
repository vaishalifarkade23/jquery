<%@ page import="java.sql.*" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Backend Table</title>
  	</head>
  	<body>
	
	<form action="#" method="post">
  	<table class="table table-bordered table-striped" id="table">
  		<thead>
      		<tr>
      			<th>ID</th>
      			<th>Full Name</th>
        		<th>User Name</th>
        		<th>Email</th>
        		<th>Password</th>
      		</tr>
    	</thead>
    	
    	<tbody id="myTable">
      
    <% 
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp", "root", "");
        String sql = "select * from useralreadyexist";
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while(rs.next())
        {
        	%>
        	<tr>
        		<td><%= rs.getInt("id")%></td>
        		<td><%= rs.getString("fullName")%></td>
        		<td><%= rs.getString("userName")%></td>
        		<td><%= rs.getString("email")%></td>
        		<td><%= rs.getString("password")%></td>
        	</tr>
        	<%
		}
	}
	catch (Exception ex) 
	{
		out.print("Exception : "+ex);
	}
	%>
      
    </tbody>
  	</table>
  	</form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>