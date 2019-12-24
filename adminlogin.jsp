<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<center>
<body style="background:#FFFFCC" alink="red" vlink="green">
<%!
String name="";
String pass="";
%>
<%
Enumeration e=request.getParameterNames();
if(e.hasMoreElements())
{
name=request.getParameter("t1");
pass=request.getParameter("t2");
}
else
{
name=(String)session.getAttribute("name");
pass=(String)session.getAttribute("pass");
}
if(name.equals("administrator")&&pass.equals("admin"))
{
	session.setAttribute("name",name);
	session.setAttribute("pass",pass);
%>
<h1 style="background:#00CC00;color:#FFFFCC;font-family:verdana">
<marquee behavior="alternate">Welcome</marquee></h1>
<h3 align="right"><a href="logout1.jsp">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a></h3>
<br>
<br>
<br>
<h3><a href="crimnal.html">Enter a crimanal record</a><br><br>

<a href="adcom.jsp">View recent complaints</a><br><br>
<a href="pilist.jsp">Police/Investigator list</a><br><br>
<a href="wanted.jsp">Most wanted list</a><br><br>
<a href="affair.jsp">Add new affairs</a><br><br>
<a href="invsyshlp.html">System help</a>
</h3>
<%
}
else
{
%>
<h3>Sorry....!<br>Enter the correct username/password<br>
<a href="adminlogin.html">Back</a></h3>
<%
	}
%>
</body>
</center>
</html>