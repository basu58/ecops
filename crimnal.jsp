<%@ include file="connect.jsp"%>

<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=request.getParameter("t5");
String s6=request.getParameter("t6");
String s7=request.getParameter("t7");
String s8=request.getParameter("t8");
String s9=request.getParameter("t9");
String s10=request.getParameter("t10");
String s11=request.getParameter("t11");
String s12=request.getParameter("t12");
String s13=request.getParameter("t13");
String s14=request.getParameter("t14");
String s15=request.getParameter("t15");
String s16=request.getParameter("t16");
String s29=request.getParameter("t17");
String s17=application.getRealPath("/")+"file/"+s29;
//String s17="fi\\"+s29;
File f=new File(s17);
FileInputStream fin=new FileInputStream(f);
PreparedStatement ps=con.prepareStatement("insert into crimnal values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,curdate(),?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,s3);
ps.setString(4,s4);
ps.setString(5,s5);
ps.setString(6,s6);
ps.setString(7,s7);
ps.setString(8,s8);
ps.setString(9,s9);
ps.setString(10,s10);
ps.setString(11,s11);
ps.setString(12,s12);
ps.setString(13,s13);
ps.setString(14,s14);
ps.setString(15,s15);
ps.setString(16,s16);
ps.setBinaryStream(17,fin,(int)f.length());

int n=ps.executeUpdate();

if (n==1)
{%>
	<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#CC33FF" text="#99FFFF">
<center>
<h1>Record inserted successfully<br><br>
<a href="crimnal.html">Back</a>
</h1>
</center>
</body>
</html>
<%
}
else
{
	%>
<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#CC33FF" text="#99FFFF">
<center>
<h1>Failed<br><br>
<a href="crimnal.html">Back</a>
</h1>
</center>
</body>
</html>
<%
}
%>