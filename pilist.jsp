<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title></head>
<body bgcolor="#99FFFF" text="#663366" vlink="#FF0000" alink="#FF0000">
<form action="pilist1.jsp" method="post">
<center>
<h2 style="background:silver;color:gold"><U><B>Police/Investigator</B></U></h2>
<h3 align="right"><a href="logout1.jsp">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="adminlogin.jsp">Back</a></h3>
<br>
<table align="left" style="background-color:#FFCC99;font-size:20">
<tr><th><U>Police List</U></th></tr>
<tr><th>Name</th><th>Designation</th></tr>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from policelogin");
while(rs.next())
{
%>
<tr><td><%=rs.getString("name")%></td><td><%=rs.getString("designation")%></td></tr>
<%	
}
%>
</table>

<table align="right" style="background-color:#FFCC99;font-size:20">
<tr><th><U>Investigator List</U></th></tr>
<tr><th>Name</th><th>Designation</th></tr>
<%
Statement st1=con.createStatement();
ResultSet rs1=st.executeQuery("select * from investigator");
while(rs1.next())
{
%>
<tr><td><%=rs1.getString("name")%></td><td><%=rs1.getString("designation")%></td></tr>
<%	
}
%>
</table>
<table border="2" bgcolor="#FF99FF">
<tr><td>Name</td><td><input type="text" name="t1"></td></tr>
<tr><td>ID</td><td><input type="text" name="t2"></td></tr>
<tr><td>Designation</td><td><input type="text" name="t3"></td></tr>
<tr><td>password</td><td><input type="password" name="t4"></td></tr>
<tr><td></td><td><input style="width:85;background:silver;color:#663366" type="Submit" value="Add Police" name="s1">
<input style="width:110;background:silver;color:#663366" type="Submit" value="Add Investigator" name="s1"></td></tr>
</table>
</center>
</form>
</body>
</html>