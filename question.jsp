<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<%!
String s1="",s2="",s3="",s4="";
%>
<%
String sno=(String)session.getAttribute("sno");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from intro where sno='"+sno+"'");
if(rs.next())
{
s1=rs.getString("fno");
session.setAttribute("fno",s1);
s2=rs.getString("name");
s3=rs.getString("question");
s4=rs.getString("answer");
%>
<center>
<font size="5" color="#6600CC"><U><B>FIR No.</B></U>&nbsp;&nbsp;<%=s1%>&nbsp;&nbsp;&nbsp;&nbsp;<U><B>Suspect No.</B></U>&nbsp;&nbsp;<%=sno%>&nbsp;&nbsp;&nbsp;&nbsp;<U><B>Name</B></U>&nbsp;&nbsp;<%=s2%></font></center>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="suspect.jsp">Back</a></h3>
<br><br>
<pre>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" value="<%=s3%>"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text"><%=s4%></textarea><br>
<%
	}
while(rs.next())
{
	s3=rs.getString("question");
s4=rs.getString("answer");
%>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" value="<%=s3%>"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text"><%=s4%></textarea><br>
<%
}
%>
</pre>
</font>
</center>
</html>