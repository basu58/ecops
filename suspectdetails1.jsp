<%@ include file="connect.jsp"%>
<%
String sno=(String)session.getAttribute("sno");
Statement st=con.createStatement();
String s1=request.getParameter("t2");
String s2=request.getParameter("t3");
String s3=request.getParameter("t4");
String s4=request.getParameter("t5");
String s5=request.getParameter("t6");
String s6=request.getParameter("t7");
String s7=request.getParameter("t8");
String s8=request.getParameter("t9");
String s9=request.getParameter("t10");
String s10=request.getParameter("t11");
String s11=request.getParameter("t12");
String s12=request.getParameter("t13");
System.out.println("s12="+s12);
int n=st.executeUpdate("update suspect set fhn='"+s3+"',addr='"+s4+"',dob='"+s5+"',sex='"+s6+"',comp='"+s7+"',height='"+s8+"',weight='"+s9+"',idm='"+s10+"',occp='"+s11+"',intro='"+s12+"' where sno='"+sno+"'");
if(n==1)
{
	response.sendRedirect("suspectdetails.jsp");
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
<h1>Failed try again<br><br>
<a href="suspect.jsp">Back</a>
</h1>
</center>
</body>
</html>
<%
}
%>