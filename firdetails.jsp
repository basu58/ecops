<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#CC33FF" text="#99FFFF" alink="white" vlink="#FFFF00">
<center>
<h1><U style="color:silver"><B style="color:silver">Fir Details</B></U></h1><hr><br>
<%
String s1=request.getParameter("t0");
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery("select * from fir where fno='"+s1+"'");
if (rs.next())
{
String s2=rs.getString(1);
String s3=rs.getString(2);
String s4=rs.getString(3);
String s5=rs.getString(5);
String s6=rs.getString(6);
String s7=rs.getString(7);
String s8=rs.getString(8);
String s9=rs.getString(9);
String s10=rs.getString(10);
String s11=rs.getString(11);
String s12=rs.getString(12);
String s13=rs.getString(13);
String s14=rs.getString(14);
String s15=rs.getString(15);
String s16=rs.getString(16);
String s17=rs.getString(17);
String s18=rs.getString(18);
String s19=rs.getString(19);
String s20=rs.getString(20);
String s21=rs.getString(21);
String s22=rs.getString(22);
String s23=rs.getString(23);
String s24=rs.getString(24);
String s25=rs.getString(25);
String s26=rs.getString(26);
String s27=rs.getString(27);
String s28=rs.getString(28);
String s29=rs.getString(29);
String s30=rs.getString(30);
String s31=rs.getString(31);
String s32=rs.getString(32);
String s33=rs.getString(33);
String s34=rs.getString(34);
String s35=rs.getString(35);
String s36=rs.getString(36);
String s37=rs.getString(37);
String s38=rs.getString(38);
%>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="firdetails.html">Back</a></h3>
<table style="font-size:25" align="left">
<tr>
<td>District</td><td><%=s2%></td>
</tr>
<tr>
<td>Police Station</td><td><%=s3%></td>
</tr>
<tr>
<td>Year</td><td><%=s4%></td>
</tr>
<tr>
<td>Acts & section</td><td><%=s5%></td>
</tr>
<tr><td><B style="color:yellow">Occurrence of offence</B></td><tr>
<tr>
<td>Day</td><td><%=s6%></td>
</tr>
<tr>
<td>Date from</td><td><%=s7%></td>
</tr>
<tr>
<td>Date to</td><td><%=s8%></td>
</tr>
<tr>
<td>Time</td><td><%=s9%></td>
</tr>
<tr>
<td>Time from</td><td><%=s10%></td>
</tr>
<tr>
<td>Time to</td><td><%=s11%></td>
</tr>
<tr><td><B style="color:yellow">Information recieved</B></td><tr>
<tr>
<td>Date</td><td><%=s12%></td>
</tr>
<tr>
<td>Time</td><td><%=s13%></td>
</tr>
<tr>
<td>Type of information</td><td><%=s14%></td>
</tr>
<tr><td><B style="color:yellow">Place fo occurrence</B></td><tr>
<tr>
<td>Distance & direction</td><td><%=s15%></td>
</tr>
<tr>
<td>Beat No.</td><td><%=s16%></td>
</tr>
<tr>
<td>Place</td><td><%=s17%></td>
</tr>
<tr>
<td>Street/village</td><td><%=s18%></td>
</tr>
<tr>
<td>Area/Mandal</td><td><%=s19%></td>
</tr>
<tr>
<td>City/District</td><td><%=s20%></td>
</tr>
<tr>
<td>State</td><td><%=s21%></td>
</tr>
<tr>
<td>Concerned Police station</td><td><%=s22%></td>
</tr>
<tr><td><B style="color:yellow">Conplainant/Informer</B></td><tr>
<tr>
<td>Name</td><td><%=s23%></td>
</tr>
<tr>
<td>Father's/Husband's name&nbsp;&nbsp;&nbsp;</td><td><%=s24%></td>
</tr>
<tr>
<td>Date of birth</td><td><%=s25%></td>
</tr>
<tr>
<td>Nationality</td><td><%=s26%></td>
</tr>
<tr>
<td>Passport No.</td><td><%=s27%></td>
</tr>
<tr>
<td>Occupation</td><td><%=s28%></td>
</tr>
<tr>
<td>Address of informer</td><td><%=s29%></td>
</tr>
<tr>
<td>Reason for delay in reporting&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=s30%></td>
</tr>
<tr>
<td>Particulars of crime</td><td><%=s31%></td>
</tr>
<tr>
<td>Complaint of informer</td><td><%=s32%></td>
</tr>
<tr>
<td>Inquest Report/U.D. case No.</td><td><%=s33%></td>
</tr>
<tr>
<td>Action taken</td><td><%=s34%></td>
</tr>
<tr>
<td>Investigator name</td><td><%=s35%></td>
</tr>
<tr>
<td>Investigator rank</td><td><%=s36%></td>
</tr>
<tr>
<td>Investigator ID</td><td><%=s37%></td>
</tr>
<tr>
<td>Case transfered to</td><td><%=s38%></td>
</tr>
</table><br><br>
<%
}
else
{
%>
<h1>Invalid FIR No. try again<br><br>
<a href="firdetails.html">Back</a>
</h1>
<%
	}
%>
</center>
</body>
</html>