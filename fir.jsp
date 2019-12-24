<%@ include file="connect.jsp"%>
<%
String s1=request.getParameter("dist");
String s2=request.getParameter("t1");
String s3=request.getParameter("t2");
String s4=request.getParameter("t3");
String s5=request.getParameter("t4");
String s6=request.getParameter("t5");
String s7=request.getParameter("t6");
String s8=request.getParameter("t7");
String s9=request.getParameter("t8");
String s10=request.getParameter("t9");
String s11=request.getParameter("t10");
String s12=request.getParameter("t11");
String s13=request.getParameter("t12");
String s14=request.getParameter("t13");
String s15=request.getParameter("t14");
String s16=request.getParameter("t15");
String s17=request.getParameter("t16");
String s18=request.getParameter("t17");
String s19=request.getParameter("t18");
String s20=request.getParameter("t19");
String s21=request.getParameter("t20");
String s22=request.getParameter("t21");
String s23=request.getParameter("t22");
String s24=request.getParameter("t23");
String s25=request.getParameter("t24");
String s26=request.getParameter("t25");
String s27=request.getParameter("t26");
String s28=request.getParameter("t27");
String s29=request.getParameter("t28");
String s30=request.getParameter("t29");
String s31=request.getParameter("t30");
String s32=request.getParameter("t31");
String s33=request.getParameter("t32");
String s34=request.getParameter("t33");
String s35=request.getParameter("t34");
String s36=request.getParameter("t35");
String s37=request.getParameter("t36");
String s38=request.getParameter("t37");
String s39=request.getParameter("t38");
PreparedStatement ps=con.prepareStatement("insert into fir values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
ps.setString(17,s17);
ps.setString(18,s18);
ps.setString(19,s19);
ps.setString(20,s20);
ps.setString(21,s21);
ps.setString(22,s22);
ps.setString(23,s23);
ps.setString(24,s24);
ps.setString(25,s25);
ps.setString(26,s26);
ps.setString(27,s27);
ps.setString(28,s28);
ps.setString(29,s29);
ps.setString(30,s30);
ps.setString(31,s31);
ps.setString(32,s32);
ps.setString(33,s33);
ps.setString(34,s34);
ps.setString(35,s35);
ps.setString(36,s36);
ps.setString(37,s37);
ps.setString(38,s38);
ps.setString(39,s39);
int n=ps.executeUpdate();
if (n==1)
{%>
	<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#CC33FF" text="#99FFFF">
<center>
<h1>Registered successfully<br><br>
<a href="fir.html">Back</a>
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
<h1>Registration failed<br><br>
<a href="fir.html">Back</a>
</h1>
</center>
</body>
</html>
<%
}
%>