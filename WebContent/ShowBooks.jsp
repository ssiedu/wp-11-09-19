<%@page import="java.sql.*" %>
<%@page import="java.util.* "%>
<%@include file="info.jsp" %>



<%!
	int getDiscount(int price){
		int dis=0;
		if(price>=1000){
			dis=price*30/100;
		}else{
			dis=price*20/100;
		}
		return dis;
	}
	

%>


<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/booksdata","root","root");
	String sql="SELECT * from books";
	java.sql.PreparedStatement ps=con.prepareStatement(sql);
	java.sql.ResultSet rs=ps.executeQuery();
%>
<html>
<body>
	<h3>Book-List</h3>
	<hr>
	<table border="2">
		<tr>
			<th>BCode</th><th>Title</th><th>Author</th><th>Subject</th><th>Price</th><td>DisAmt</td>
		</tr>
		
<%
	while(rs.next()){
		String s1=rs.getString(1);
		String s2=rs.getString(2);
		String s3=rs.getString(3);
		String s4=rs.getString(4);
		String s5=rs.getString(5);
%>
	<tr>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		<td><%=s4%></td>
		<td><%=Integer.parseInt(s5)%></td>
		<td><%=getDiscount(Integer.parseInt(s5)) %>
	</tr>
<%
	}
	con.close();
%>
		                                            
	
	
	</table>
	<hr>
	<a href="buyerpage.jsp">BuyerHome</a>
</body>
</html>