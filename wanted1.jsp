<%@ include file="connect.jsp"%>
<html>
<head>
<title> Wanted </title>
<link rel="stylesheet" type="text/css" href="affair1.css">
</head>
<body bgcolor="#CCCCFF" text="#996666" alink="white" vlink="#FFFF00">
<center>
<h1 style="color:red">Wanted</h1><hr>
<%!
String s1="",s2="",s3="",s4="",s5="";
byte b[];
int i=0;
FileOutputStream fis=null;
%>
<h3 align="right"><a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="citizen.html">Back</a></h3>
<table border="1" style="text-align:center">
<tr style="background:#66CCFF">
    <th>Name</th> <th>Age</th> <th>Nationality</th> <th>Crime</th> <th>Image</th>
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
	String path1=application.getRealPath("/")+"files/"+i+".jpg";
	String getpath1="files/"+i+".jpg";
	fis=new FileOutputStream(path1);
	fis.write(b);
%>
<tr>
<td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td>
<td><img src=<%=getpath1%> height="80" width="70"></td>
</tr>
		
<%
}	}
%>

</table>
</center>
</body>
</html>