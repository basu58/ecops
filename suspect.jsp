<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
<link rel="stylesheet" type="text/css" href="affair1.css">
<link rel="stylesheet" type="text/css" href="suspect.css">
</head>
<center>
<body style="background: #6D79BD">
<h1 style="color: white"><U>Suspected List</U></h1>
<hr style="color:white">
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="investigate1.html">Back</a></h3><br>
<table border="1">
<tr>
<th>Fir No.</th><th>Name</th><th>Suspect No.</th><th>Introgation status</th>
</tr>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from suspect");
while(rs.next())
{
String s1=rs.getString("fno");
String s2=rs.getString("name");
String s3=rs.getString("sno");
String s4=rs.getString("intro");
if(s4.equals("yes"))
	s4="<a href=question.jsp?sno="+s3+">yes</a>";
%>
<tr>
<td><a href="invsuschoice.jsp?link=<%=s3%>">select</a></td><td><%=s1%></td><td><%=s2%></td><td><%=s3%>
</td><td><%=s4%></td>
</tr>
<%
}	
%>
</table><br><br><br>
<p><a href="addsuspect1.jsp"><B>Add new suspect</B></a> </p>
</center>
</body>
</html>