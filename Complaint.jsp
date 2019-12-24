<%@ include file="connect.jsp"%>
<%!
PreparedStatement ps=null;
RequestDispatcher rd=null;
%>
<%
try{
String tn=request.getParameter("tn");
request.setAttribute("tn",tn);
String fhn=request.getParameter("fhn");
request.setAttribute("fhn",fhn);
String age=request.getParameter("age");
request.setAttribute("age",age);
String toccup=request.getParameter("toccup");
request.setAttribute("toccup",toccup);
String add=request.getParameter("add");
request.setAttribute("add",add);
String phno=request.getParameter("phno");
request.setAttribute("phno",phno);
String dd=request.getParameter("dd");
request.setAttribute("dd",dd);
String mm=request.getParameter("mm");
request.setAttribute("mm",mm);
String yy=request.getParameter("yy");
request.setAttribute("yy",yy);
String hh=request.getParameter("hh");
request.setAttribute("hh",hh);
String mm1=request.getParameter("mm1");
request.setAttribute("mm1",mm1);
String dist=request.getParameter("dist");
request.setAttribute("dist",dist);
String pstation=request.getParameter("p-station");
request.setAttribute("pstation",pstation);
String aoff=request.getParameter("aoff");
request.setAttribute("aoff",aoff);
String property=request.getParameter("property");
request.setAttribute("property",property);
String comp=request.getParameter("comp");
request.setAttribute("comp",comp);
ps=con.prepareStatement("insert into complaint (tn,fhn,age,toccup,addr,phno,dof,tof,dist,pstation,aoff,dtcomp,pro,comp,status) values(?,?,?,?,?,?,?,?,?,?,?,curdate(),?,?,'pending')");
ps.setString(1,tn);
ps.setString(2,fhn);
ps.setString(3,age);
ps.setString(4,toccup);
ps.setString(5,add);
ps.setString(6,phno);
ps.setString(7,dd+"-"+mm+"-"+yy);
ps.setString(8,hh+":"+mm1);
ps.setString(9,dist);
ps.setString(10,pstation);
ps.setString(11,aoff);
ps.setString(12,property);
ps.setString(13,comp);
int i=ps.executeUpdate();
if(i==1)
	{
	response.sendRedirect("compack.jsp");
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
<h1>Complaint is not registered try again<br><br>
<a href="complaint.html">Back</a>
</h1>
</center>
</body>
</html>
<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>