<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<body bgcolor="#FFCCFF" text="#996666" alink="white" vlink="#FFFF00">
<center>
<h1>Complaints</h1><hr>
<%!
String s1="",s2="",s3="",s4="",s5="",s6="";
%>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from complaint");
if(rs.next())
{
	%>
		<h3 align="right"><a href="logout1.jsp">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="adminlogin.jsp">Back</a></h3>
		<table border="1" style="text-align:center">
<tr style="background:#66CCFF"><td></td>
<th>Complaint No.</th><th>Name</th><th>Date</th><th>Address</th><th>Complaint</th><th>Status</th>
</tr>
<%
s1=rs.getString("cno");
	s2=rs.getString("tn");
	s3=rs.getString("dtcomp");
	s4= rs.getString("addr");
	s5=rs.getString("comp");
	s6=rs.getString("status");
	%>
<tr>
<td><a href="CompDetails.jsp?link=<%=s1%>">Details</a></td><td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td>
</tr>
		<%
		
	while(rs.next())
	{		
	s1=rs.getString("cno");
	s2=rs.getString("tn");
	s3=rs.getString("dtcomp");
	s4= rs.getString("addr");
	s5=rs.getString("comp");
	s6=rs.getString("status");
	%>
	<tr>
<td><a href="CompDetails.jsp?link=<%=s1%>">Details</a></td><td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td>
</tr>
<%
}	
%></table><%
	}
	else 
	{
		%>
<h1>Record not found</h1><br>
<B><a href="adminlogin.jsp">Back</a></B>
		<%
	}
		%>