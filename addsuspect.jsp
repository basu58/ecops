<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#CC33FF" text="#99FFFF">
<center>
<%
String s1=request.getParameter("t0");
String s2=request.getParameter("t1");
PreparedStatement ps=con.prepareStatement("insert into suspect values(susno.nextval,?,?,null,null,null,null,null,null,null,null,null,'no')");
ps.setString(1,s2);
ps.setString(2,s1);
int n=ps.executeUpdate();
if (n==1)
{
	response.sendRedirect("suspect.jsp");
}
else
{
%>
<h1>Suspect not added<br><br>
<a href="addsuspect1.jsp">Back</a>
</h1>
<%
}
%>
</center>
</body>
</html>