<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<center>
<%
String s1=request.getParameter("link");
session.setAttribute("sno",s1);
%>
<body style="background:#FFFFCC" alink="red" vlink="green">
<h1 style="background:#00CC00;color:#FFFFCC;font-family:verdana">
<marquee behavior="alternate">Welcome</marquee></h1>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="investigate1.html">Back</a></h3>
<br>
<br>
<br>
<h3>
<a href="intro.jsp">Interogate suspect's</a><br><br>
<a href="suspectdetails.jsp">Suspect Details</a><br><br>
</h3>
</body>
</center>
</html>
