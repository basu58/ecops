<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<%!
String s1="",s2="";
%>
<%
String sno=(String)session.getAttribute("sno");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from suspect where sno='"+sno+"'");
if(rs.next())
{
s1=rs.getString("fno");
session.setAttribute("fno",s1);
s2=rs.getString("name");
session.setAttribute("name",s2);
}
%>
<form action="intro1.jsp" method="post">
<center>

<font size="5" color="#6600CC"><U><B>FIR No.</B></U>&nbsp;&nbsp;<%=s1%>&nbsp;&nbsp;&nbsp;&nbsp;<U><B>Suspect No.</B></U>&nbsp;&nbsp;<%=sno%>&nbsp;&nbsp;&nbsp;&nbsp;<U><B>Name</B></U>&nbsp;&nbsp;<%=s2%></font></center>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="investigate1.html">Back</a></h3>
<br><br>
<pre>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t1"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t2"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t3"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t4"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t5"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t6"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t7"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t8"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t9"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t10"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t11"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t12"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t13"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t14"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t15"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t16"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t17"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t18"></textarea><br>
<B>Question:</B>&nbsp;&nbsp;&nbsp;<input style="width:400" type="text" name="t19"><br>
<B>Answer:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea style="width:400;height:50" type="text" name="t20"></textarea><br>
</pre>
<input type="submit" name="s1" value="More Question">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="s1" value="End Introgation">
</form>
</html>
