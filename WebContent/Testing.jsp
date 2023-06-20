<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>  
</head>
<body>
	<form>
		<table>
			<tr>
				<td>Item Name :</td><td><input type="text" id="itemname" name="iname"></td>
				<td>Item Cost:</td><td><input type="text" id="itemcost" name="icost"></td>
			</tr>
		</table>
	</form>
	
	<table>
	<thead>
								                                    <tr>
								                                        <th class="border-0 text-uppercase small font-weight-bold">ID</th>
								                                        <th class="border-0 text-uppercase small font-weight-bold">Item Name</th>
								                                        <th class="border-0 text-uppercase small font-weight-bold">Item price</th>
								                                        <th class="border-0 text-uppercase small font-weight-bold">Item type</th>
								                                        <th class="border-0 text-uppercase small font-weight-bold">Add</th>
								                                    </tr>
								                                </thead>
								                                <tbody>
								                                	<%
																			try{
																	            Class.forName("com.mysql.jdbc.Driver");
																	       	   Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbjsp","root","");
																	       	   String sql ="select * from itemform";
																	       	   PreparedStatement pst1 = con1.prepareStatement(sql);  
																	       	   ResultSet rs1= pst1.executeQuery();
																	       	   while(rs1.next()){
																	       		   	%>
																	       		   		<tr>
																	       		   			<td><%=rs1.getInt(1)%></td>
																	       		   			<td><%=rs1.getString("itemname")%></td>
																	       		   			<td><%=rs1.getString("itemprice")%></td>
																	       		   			<td><%=rs1.getString("itemtype")%></td>
																	       		   			
																	       		   			<td><button class="add1" data-cid="<%=rs1.getInt("id")%>">ADD</button></td>
																	       		   		
																	       		   		</tr>
																	       		   	<%
																	       	   }
																			}catch(Exception ex)
																			{
																				
																			}
																			
																			%>
								                                	
								                                </tbody>
		
	</table>
	 <script type="text/javascript">
	 	$(document).ready(function(){
	 		$(".add1").click(function(evt){
	 			//alert($(this).data("cid"));	
	 			evt.preventDefault();       //it prevent from go back
	 			var id = $(this).data("cid");//cid is attribute  //"this" is for current click
	 			generateData(id);
	 		});
	 		
	 		function generateData(id)
	 		{
	 			//alert(id);
	 			//var id1=id;
	 			$.get("iname.jsp",{itemid:id},function(response,status){   //responce is to store the responce/value
	 				//alert(response);
	 				$("#itemname").val(response);
	 			});
	 			$.get("icost.jsp",{itemid:id},function(response,status){
	 				//alert(response);
	 				$("#itemcost").val(response);
	 			});
	 		}
	 		
	 	});
	 </script>
</body>
</html>