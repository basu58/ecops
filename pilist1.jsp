<%@ include file="connect.jsp"%>
<%
String but=request.getParameter("s1");
String name=request.getParameter("t1");
String id=request.getParameter("t2");
String desig=request.getParameter("t3");
String pass=request.getParameter("t4");
if(but.equals("Add Police"))
{	
	PreparedStatement ps=con.prepareStatement("insert into policelogin values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,id);
	ps.setString(3,desig);
	ps.setString(4,pass);
	int n=ps.executeUpdate();
	if(n==1)
	{
		response.sendRedirect("pilist.jsp");
	}
}
else if(but.equals("Add Investigator"))
{
	PreparedStatement ps=con.prepareStatement("insert into investigator values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,id);
	ps.setString(3,desig);
	ps.setString(4,pass);
	int n=ps.executeUpdate();
	if(n==1)
	{
		response.sendRedirect("pilist.jsp");
	}
}
%>