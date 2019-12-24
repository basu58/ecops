<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<body bgcolor="#FFCCFF" text="#996666" alink="white" vlink="#FFFF00">
<center>
<%!
String s1="",s2="",s3="",s4="";
int i=0;
byte b[];
%>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from crimnal");
if (rs.next())
	{
		%>
		<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="policelogin.html">Back</a></h3>
		<table border="1" style="text-align:center">
<tr style="background:#66CCFF"><td></td>
<th>Crimnal ID</th><th>Name</th><th>Height</th><th>Image</th>
</tr>
<%
s1=rs.getString("cid");
	s2=rs.getString("cht");
	s3=rs.getString("cfn");
	s4= rs.getString("cln");
	b=rs.getBytes(18);
	FileOutputStream fis=new FileOutputStream("C:/WINDOWS/Temp/img"+i+".jpg");
	fis.write(b);
	%>
<tr>
<td><a href="crimnaldetails.jsp?link=<%=s1%>">Details</a></td><td><%=s1%></td><td><%=s3%>&nbsp;<%=s4%></td><td><%=s2%>
</td><td><img src="C:/WINDOWS/Temp/img<%=i%>.jpg" height="80" width="70"></td>
</tr>
		<%
		
	while(rs.next())
	{
		i++;
	s1=rs.getString("cid");
	s2=rs.getString("cht");
	s3=rs.getString("cfn");
	s4= rs.getString("cln");
	b=rs.getBytes(18);
	 fis=new FileOutputStream("C:/WINDOWS/Temp/img"+i+".jpg");
	fis.write(b);
%>
<tr>
<td><a href="crimnaldetails.jsp?link=<%=s1%>">Details</a></td><td><%=s1%></td><td><%=s3%>&nbsp;<%=s4%></td><td><%=s2%>
</td><td><img src="C:/WINDOWS/Temp/img<%=i%>.jpg" height="80" width="70"></td>
</tr>
<%
}	
%></table><%
	}
	else 
	{
		%>
<h1>Record not found</h1><br>
<B><a href="policelogin.html">Back</a></B>
		<%
	}
		%>