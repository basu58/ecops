<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<body bgcolor="#CC33FF" text="#99FFFF">
<center>
<br><br>
<%
String s1=request.getParameter("t0");
String s2=request.getParameter("t1");
String s3=request.getParameter("t2");
String s4=request.getParameter("t3");
if(s1.equals("")||s2.equals("")||s3.equals("")|s4.equals(""))
{
%>
<h1>Please fill all the fields<br><br>
<a href="changepass.html">Back</a>
</h1>
<%
}
if(!s3.equals(s4))
{
%>
<h1>New Password and confirm password does't matched<br><br>
<a href="changepass.html">Back</a>
</h1>
<%
}
else
{
Statement st=con.createStatement();
Statement st1=con.createStatement();
ResultSet rs=st.executeQuery("select pid,pass from policelogin where pid='"+s1+"' and pass='"+s2+"'");
if(rs.next())
{
	int n=st1.executeUpdate("update policelogin set pass='"+s4+"' where pass='"+s2+"'");
	if (n==1)
	{
%>
<h1>Password changed successfully<br><br>
<a href="police.html">Back</a>
</h1>
<%
	}
}
else
	{
%>
<h1>Invalid user<br><br>
<a href="changepass.html">Back</a>
</h1>
<%
	}
}
%>
</center>
</body>
</html>