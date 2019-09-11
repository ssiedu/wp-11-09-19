<%@page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booksdata","root","root");
	String sql="SELECT distinct subject from books";
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
%>
<html>
<body>
	<form action="BookListServlet">
		Subject <select name="subject">
<%
	while(rs.next()){
		String s1=rs.getString(1);	
%>
<option><%=s1%></option>		
<%
	}
%>			
				</select>
				<input type="submit" value="Get-List"/>
	
	</form>
</body>
</html>