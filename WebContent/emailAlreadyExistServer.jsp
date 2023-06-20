<%@ page import="java.sql.*" %>
<%
	String semail = request.getParameter("e_mail");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp", "root", "");
		String sql = "select * from useralreadyexist where email = '"+semail+"' ";
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		if(rs.next())
		{
			out.println("Email is already exists"+semail);
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