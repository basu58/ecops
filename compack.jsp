<%@ include file="connect.jsp"%>
<%!
int i;
%>
<html>
<body bgcolor="#FFCCFF">
<head>
<title>www.pssoft.com</title>
</head>
<center>
<h2 class="style8"><u style="background-color:white">THE POLICE -AT YOUR SERVICE</u></h2>
<br>
<img src="satyam.bmp"></img>
</center><br><br>
<p style="background-color:#FFCC99;height:10%">
Your complaint have been registered. To check the status please use our "get status" service. Use the complaint number given below for further refrence.
</p>
<%
String query="select cno from complaint order by cno asc";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);
while(rs.next())
{
i=rs.getInt(1);
}
%>
<br><br><br>
<p style="background-color:#CCCCFF;width:30%">
<b>Your complaint number is :</b><%=i%></p>
<br><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="home.html">Click here to return to the home page</a>
</body>
</html>