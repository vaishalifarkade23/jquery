<%@page import="java.sql.*" %>
<%
	String id = request.getParameter("itemid");
	System.out.println(" ID--> "+id);
	// String id = "5";
    try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp", "root", "");
    		String sql = "select distinct itemname from itemform where id='"+id+"'";
    		PreparedStatement pst = con.prepareStatement(sql);
    		ResultSet rs = pst.executeQuery();
    		while(rs.next())
    		{
    			out.println("  "+rs.getString(1));
    		}
    }catch(Exception ex)
    {
    	System.out.println(" Exception "+ex.getMessage());
    }

%>