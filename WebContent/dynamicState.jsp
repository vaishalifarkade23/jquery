<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <select id="state" class="form-control" name="state">
    <option>Select State</option>
    <%
               
                    String Contname=request.getParameter("country");
                    out.println(Contname);
        try{
                   
                                       Class.forName("com.mysql.jdbc.Driver");
                                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp", "root", "");
                                        String sql = "select distinct state from dynamicdropdown where country='"+Contname+"'";
                                        PreparedStatement pst = con.prepareStatement(sql);
                                        ResultSet rs=pst.executeQuery();
                                        while(rs.next())
                                        {
                                            
                                            %>
                                            <option><%=rs.getString("state")%></option>
                                           <%
                                        }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        %>
    </select>
</body>
</html>