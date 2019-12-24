<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<center>
<%
String mailid=request.getParameter("t1")+"@police.com";
String pass=request.getParameter("t2");
String name=request.getParameter("t3");
String designation=request.getParameter("t4");
if(!mailid.equals("")||!pass.equals("")||!name.equals("")||!designation.equals(""))
{
PreparedStatement ps=con.prepareStatement("insert into maillogin values(?,?,?,?)");
ps.setString(1,mailid.trim());
ps.setString(2,pass.trim());
ps.setString(3,name.trim());
ps.setString(4,designation.trim());
int n=ps.executeUpdate();
if(n==1)
{
	%>
	<h3>Your account is created successfully</h3>
	<a href="maillogin.html">Back</a>
	<%
}
}
%>
</center>
</html>