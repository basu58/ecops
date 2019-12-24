<%@ include file="connect.jsp"%>
<html>
<head>
<title> Current Affair </title>
<link rel="stylesheet" type="text/css" href="affair.css">
<link rel="stylesheet" type="text/css" href="affair1.css">
</head>
<body bgcolor="#99FFFF" text="#663366" vlink="#FF0000" alink="#FF0000">
<center>
<h2 style="background:silver;color:gold"><U><B>Current Affairs</B></U></h2>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="about.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="citizen.html">Back</a></h3>
<br>
<%
int i=1;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from curaffairs");
while(rs.next())
{
%>
<p>
<%=rs.getString("affair")%>
</p>
<%
}
%>
</center>
</form>
</body>
</html>