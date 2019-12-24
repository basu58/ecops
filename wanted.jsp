<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<body bgcolor="#FFCCFF" text="#996666" alink="white" vlink="#FFFF00">
<center>
<h1>Wanted</h1><hr>
<%!
String s1="",s2="",s3="",s4="",s5="";
byte b[];
int i=0;
FileOutputStream fis=null;
%>
<h3 align="right"><a href="logout1.jsp">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="adminlogin.jsp">Back</a></h3>
		<table border="1" style="text-align:center">
<tr style="background:#66CCFF">
<th>Name</th><th>Age</th><th>Nationality</th><th>Crime</th><th>Image</th>
</tr>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from wanted");
if(rs.next())
{
	
s1=rs.getString("name");
	s2=rs.getString("age");
	s3=rs.getString("nationality");
	s4= rs.getString("Crime");
	b=rs.getBytes("img");
	String path=application.getRealPath("/")+"files/"+i+".jpg";
	String getpath="files/"+i+".jpg";
	fis=new FileOutputStream(path);
	fis.write(b);
	%>
<tr>
<td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td>
<td><img src=<%=getpath%> height="80" width="70"></td>
</tr>
		<%
		
	while(rs.next())
	{	
		i++;
	s1=rs.getString("name");
	s2=rs.getString("age");
	s3=rs.getString("nationality");
	s4= rs.getString("Crime");
	b=rs.getBytes("img");
	fis=new FileOutputStream("C:/WINDOWS/Temp/img"+i+".jpg");
	fis.write(b);
	%>
<tr>
<td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td>
<td><img src="C:/WINDOWS/Temp/img<%=i%>.jpg" height="80" width="70"></td>
</tr>
		
<%
}	}
%>

</table><br><br>
<form action="addwanted.html" >
<input type="submit" value="Add New" style="width:250;background:#996666;color:#FFCCFF">
</form>
</center>
</body>
</html>