<%@ include file="connect.jsp"%>
<%
String id=request.getParameter("t0");
String pass=request.getParameter("t1");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select pid,password from investigator where pid='"+id+"' and password='"+pass+"'");
if (rs.next())
{
	response.sendRedirect("investigate1.html");
}
else
{
response.sendRedirect("error.html");
}
%>