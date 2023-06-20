<%@ page import="java.sql.*" %>
<%

	int  id = Integer.parseInt(request.getParameter("itemid"));
	System.out.println(" ID--> "+id);
	//int id = 3;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp", "root", "");
		String sql = "select distinct itemprice from itemform where id='"+id+"'";
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while(rs.next())
		{
			//System.out.println("  "+rs.getString(1));
			out.println(rs.getString(1));
		}
}catch(Exception ex)
{
	System.out.println(" Exception "+ex.getMessage());
} 
%>