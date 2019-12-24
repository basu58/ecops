<%@ include file="connect.jsp"%>
<%!
String uid="",pid="";
Vector v=new Vector();
String error="";
%>

<html>
<script>
function check()
{	
	id=f1.t1.value;
	if(id.length==0)
	{
	alert("please fill it !");
	f1.t1.focus();
	}
	else
	{
	location.href="createnew.jsp?uid="+id;
	}
}	
</script>
<%
Enumeration e=request.getParameterNames();
if(e.hasMoreElements())
{
	Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select mailid from maillogin");
while(rs.next())
{
	v.add(rs.getString(1));
}

	pid=request.getParameter("uid");
	uid=pid+"@police.com";
	Iterator it=v.iterator();
	boolean done=false;
	if(!uid.trim().equals(""))
	{
	while(it.hasNext())
	{
		String uid1=(String)it.next();
		if(uid.equals(uid1))
			done=true;
	}
	if(done)
		{
			error="<font color=red size=2>Choose some other id</font>"; 
			pid="";
		}
		else
			error="<font color=blue size=2>Available</font>";
	}
	else
		error="";
}
%>
<head>
<title>www.pssoft.com</title>
</head>
<center>
<h1><U>Create New ID</U></h1><h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="maillogin.html">Back</a></h3><br><br>
</center>

<form action="createnew1.jsp" name="f1" method="post">
<table>
<tr>
<td><B>Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t1" onblur="javascript:check()" value="<%=pid%>">@police.com</td><td><%=error%></td>
</tr>



<tr>
<td><B>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="password" name="t2"></td>
</tr>

<tr>
<td><B>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t3"></td>
</tr>

<tr>
<td><B>Designation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></td><td><input type="text" name="t4"></td>
</tr>
</table><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Create">
</form>
</html>