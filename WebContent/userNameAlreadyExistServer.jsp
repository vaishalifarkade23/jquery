<%@ page import="java.sql.*" %>
<%
	String susername = request.getParameter("user_name");

	System.out.println("User Name :"+susername);
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp", "root", "");
		String sql = "select * from useralreadyexist where userName = '"+susername+"' ";
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		if(rs.next())
		{
			//out.println("<span style='color:red'>Username is already exists.</span>");
			out.println("Username is already exists"+susername);
		}
		else
		{
			out.println("");
		}
	}
	catch(Exception ex)
	{
		out.println("Exception : "+ex);
	}
%>