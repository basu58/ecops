<%@ include file="connect.jsp"%>
<html>
<head>
<title> Affair </title>
<link rel="stylesheet" type="text/css" href="affair.css">
<link rel="stylesheet" type="text/css" href="affair1.css">
</head>
<body bgcolor="#99FFFF" text="#663366" vlink="#FF0000" alink="#FF0000">
<center>
<h2 style="background:silver;color:gold"><U><h1>Current Affairs<//h1></U></h2>
<h3 align="right"><a href="logout1.jsp">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="adminlogin.jsp">Back</a></h3>
<br>
<%
int i=1;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from curaffairs");
while(rs.next())
{
%>
<p>
   <%=rs.getString("affair")%> <br> <br> <a href="affair1.jsp?ano=<%=rs.getString("ano")%>"> &nbsp; Remove this Affair &nbsp; </a> 
</p>  

<%
	i++;
}
%>
<br>
<form action="affair1.jsp" method="post">
<U><B>Add new Affairs</B></U><br>
<textarea name="affair" rows="8" cols="40" style="font-size:20;color:blue"></textarea><br> <br>
<input  type="submit" value="Add now" name="s1">
</center>
</form>
</body>
</html>

