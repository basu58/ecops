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
String cfn=request.getParameter("t1");
String cln=request.getParameter("t2");
try
{
if(!cfn.equals("")||!cln.equals(""))
{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from crimnal where cfn='"+cfn+"' or cln='"+cln+"'");
	if (rs.next())
	{
		%>
		<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="record.html">Back</a></h3>
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
<td><a href="recordDetails.jsp?link=<%=s1%>">Details</a></td><td><%=s1%></td><td><%=s3%>&nbsp;<%=s4%></td><td><%=s2%>
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
<td><a href="recordDetails.jsp?link=<%=s1%>">Details</a></td><td><%=s1%></td><td><%=s3%>&nbsp;<%=s4%></td><td><%=s2%>
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
<B><a href="record.html">Back</a></B>
		<%
	}
}
else
{
%>
<h1>Please Enter first name or last name</h1><br>
<B><a href="record.html">Back</a></B>
<%
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>

</center>
</body>
</html>