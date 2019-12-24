<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<center>
<h1><U>Suspect Details</U></h1><br><br>
</center>
<%!
String male="",female="",no="",yes="";
String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="";
%>
<%
String sno=(String)session.getAttribute("sno");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from suspect where sno='"+sno+"'");
if(rs.next())
{
s1=rs.getString("fno");
s2=rs.getString("name");
s3=rs.getString("fhn");
s4=rs.getString("addr");
s5=rs.getString("dob");
s6=rs.getString("sex");
s7=rs.getString("comp");
s8=rs.getString("height");
s9=rs.getString("weight");
s10=rs.getString("idm");
s11=rs.getString("occp");
s12=rs.getString("intro");
}
%>
<form action="suspectdetails1.jsp" method="post">
<table align="left">
<tr>
<td><B>Suspect No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="link" value="<%=sno%>"></td>
</tr>

<tr>
<td><B>Fir No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t2" value="<%=s1%>"></td>
</tr>

<tr>
<td><B>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t3" value="<%=s2%>"></td>
</tr>

<tr>
<td><B>Father's name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t4" value="<%=s3%>"></td>
</tr>
<tr>
<td><B>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><textarea rows="5" cols="16" name="t5"><%=s4%></textarea></td>
</tr>

<tr>
<td><B>Date of birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t6" value="<%=s5%>"><B>dd/mm/yy</B></td>
</tr>
<%
try
{
	if(!s6.equals(""))
	{
if(s6.equals("male"))
{
	male="checked";
	female="unchecked";
}
else
{
	male="unchecked";
	female="checked";
}
	}
}
catch(Exception e)
	{}
%>
<tr>
<td><B>Sex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="radio" name="t7" value="male" <%=male%>>Male<input type="radio" name="t7" value="female" <%=female%>>Female</td>
</tr>

<tr>
<td><B>Complextion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t8" value="<%=s7%>">
</td>
</tr>

<tr>
<td><B>Height&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t9" value="<%=s8%>"><B>cms</B></td>
</tr>

<tr>
<td><B>Weight&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t10" value="<%=s9%>"><B>kgs</B></td>
</tr>

<tr>
<td><B>Identification mark&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><textarea rows="5" cols="16" name="t11"><%=s10%></textarea></td>
</tr>


<tr>
<td><B>Occupation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t12" value="<%=s11%>"></td>
</tr>
<%
try
{
	if (!s12.equals(""))
	{
	if(s12.equals("yes"))
{
	yes="checked";
	no="unchecked";
}
else
{
	yes="unchecked";
	no="checked";
}
	}
}
catch(Exception e)
{}
%>
<tr>
<td><B>Whether introgated or not &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="radio" name="t13" value="yes" <%=yes%>>Yes<input type="radio" name="t13" value="no"  <%=no%>>No</td>
</tr>
<tr>
<td><br><br><input type="submit" value="Update" style="width:100;height:30"></td></form><form action="invsuschoice.jsp"><td><br><br>
<input type="hidden" name="link" value="<%=sno%>">
<input type="submit" value="Cancel" style="width:100;height:30"></td></form>
</tr>
</table>
</html>