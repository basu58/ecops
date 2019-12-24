<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>

<body bgcolor="#99FFFF" text="#663366" alink="#000099" vlink="#CC3300">
<center>
<%
PreparedStatement ps=null;
File file=null;
FileInputStream fis=null;
String date="";
String to=request.getParameter("t1");
String sub=request.getParameter("t2");
String attach=request.getParameter("t3");
String msg=request.getParameter("t4");
String mailid=(String)session.getAttribute("mailid");
//Statement st=con.createStatement();
//ResultSet rs=st.executeQuery("select sysdate from dual");
/*if(rs.next())
{
	date=rs.getString(1);
}*/
if(!mailid.equals(to))
{
if(attach.equals(""))
{
	ps=con.prepareStatement("insert into inbox values(mailno.nextval,?,?,?,sysdate,?,null)");
	ps.setString(1,to);
	ps.setString(2,mailid);
	ps.setString(3,sub);
	ps.setString(4,msg);
}
else
{
	System.out.println("mailid="+mailid);
	file=new File(attach);
	fis=new FileInputStream(file);
	ps=con.prepareStatement("insert into inbox values(mailno.nextval,?,?,?,sysdate,?,?)");
	ps.setString(1,to);
	ps.setString(2,mailid);
	ps.setString(3,sub);
	ps.setString(4,msg);
	ps.setBinaryStream(5,fis,(int)file.length());
}
	int n=ps.executeUpdate();
	if(n==1)
	{		
%>
<h3>Mail Sent Successfully<br>
<a href="maillogin.jsp">Back</a>
</h3>
<%
	}
	else
	{
%>
<h3>Mail Sending Failed<br>
<a href="compose.html">Back</a>
</h3>
<%
	}
}
else
{
%>
<h3>Mail Sending Failed<br>
<a href="compose.html">Back</a>
</h3>
<%
	}
%>
