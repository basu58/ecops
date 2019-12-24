<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<body bgcolor="#FFCCFF" text="#6600FF" alink="white" vlink="#FFFF00">
<h2 align="right"><a href="compstatus.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="compstatus.html">Back</a></h2><br><br>
<center>
<%
String cno=request.getParameter("t1");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select status from complaint where cno='"+cno+"'");
if(rs.next())
{
	String status=rs.getString(1);
	if(status.equals("pending"))
	{
%>
<h3>Sorry for the delay your complaint will be processed as soon as possible</h3>
<%
	}
	else if(status.equals("accepted"))
	{
		%>
<h3>Your complaint has been registered. you will get the response very soon</h3>
<%
	}
}
else
{
%>
<h3>This complaint no. is not valid. Try again...!</h3>
<%
}
%>
</center>
</body>
</html>