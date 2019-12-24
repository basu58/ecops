<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#CC33FF" text="#99FFFF" alink="white" vlink="#FFFF00">
<center>
<h1><U style="color:silver"><B style="color:silver">Complaint Details</B></U></h1><hr><br>
<%
String cno=request.getParameter("link");
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery("select * from complaint where cno='"+cno+"'");
if (rs.next())
{
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
%>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="adcom.jsp">Back</a></h3>
<table style="font-size:25" align="left">
<tr>
<td>Complaint No.&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=cno%></td>
</tr>
<tr>
<td>Name&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s2%></td>
</tr>
<tr>
<td>Father name&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s3%></td>
</tr>
<tr>
<td>Age&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s4%></td>
<tr>
<tr>
<td>Occupation&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s5%></td>
<tr>
<tr>
<td>Address&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s6%></td>
<tr>
<td>Contact No.&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s7%></td>
</tr>
<tr>
<td>Date of offence&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s8%></td>
</tr>
<tr>
<td>Time of offence&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s9%></td>
</tr>
<tr>
<td>District&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s10%></td>
</tr>
<tr>
<td>Police-station&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s11%></td>
</tr>
<tr>
<td>Area of offence&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s12%></td>
</tr>
<tr>
<td>Complaint date&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s13%></td>
</tr>
<tr>
<td>Property lost&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s14%></td>
</tr>
<tr>
<td>Complaint&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s15%></td>
</tr>
</table>
<%
}	
%>
<form action="accept.jsp" method=post>
<input type="hidden" name="cno" value="<%=cno%>">
<br><input type="submit" value="Accept" style="position:relative;left:100;top:450">
</form>
</center>
</body>
</html>
