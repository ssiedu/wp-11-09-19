<%
	long val=session.getMaxInactiveInterval();
	String user=(String)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("index.jsp");
	}
%>

<html>
<body>
	<%=val%>
	<h3>DashBoard-For-<%=user%></h3>
	<hr>
	<pre>
		<a href="SubjectPageServlet">Explore-Store</a>
		<a href="ShowBooks.jsp">View-All-Books</a>
		<a href="subjectpage.jsp">Search-Book</a>
		<a href="">View-Cart</a>
		<a href="">Trace-Order</a>
		<a href="">Profile-Update</a>
		<a href="">Logout</a>
	</pre>		
	<hr>
</body>
</html>