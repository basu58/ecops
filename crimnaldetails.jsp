<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#CC33FF" text="#99FFFF" alink="white" vlink="#FFFF00">
<center>
<h1><U style="color:silver"><B style="color:silver">Crimnal Details</B></U></h1><hr><br>
<%
String cid=request.getParameter("link");
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery("select * from crimnal where cid='"+cid+"'");
if (rs.next())
{
String s1=rs.getString(1);
String s2=rs.getString(2);
String s3=rs.getString(3);
String s4=rs.getString(4);
String s5=rs.getString(5);
String s6=rs.getString(6);
String s7=rs.getString(7);
String s8=rs.getString(8);
String s9=rs.getString(9);
String s10=rs.getString(10);
String s11=rs.getString(11);
String s12=rs.getString(12);
String s13=rs.getString(13);
String s14=rs.getString(14);
String s15=rs.getString(15);
String s16=rs.getString(16);
String s17=rs.getString(17);
%>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="crimnallist.jsp">Back</a></h3>
<table style="font-size:25" align="left">
<tr>
<td>Crimnal ID&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=cid%></td>
</tr>
<tr>
<td>Father name&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s4%></td>
</tr>
<tr>
<td>Address&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s5%></td>
<tr>
<td>Nature of crime&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s6%></td>
</tr>
<tr>
<td>Date of birth&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s7%></td>
</tr>
<tr>
<td>Sex&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s8%></td>
</tr>
<tr>
<td>Complextion&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s9%></td>
</tr>
<tr>
<td>Height&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s10%></td>
</tr>
<tr>
<td>Weight&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s11%></td>
<tr>
<td>Identification mark&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s12%></td>
</tr>
<tr>
<td>Previous crime record&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s13%></td>
</tr>
<tr>
<td>District&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s14%></td>
<tr>
<td>Fir No.&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s15%></td>
</tr>
<tr>
<td>Area of operation&nbsp;&nbsp;&nbsp;&nbsp;<td><%=s16%></td>
</tr>
<tr>
<td>Last updated&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s17%></td>
</tr>
</table>
<%
}	
%>
</center>
</body>
</html>