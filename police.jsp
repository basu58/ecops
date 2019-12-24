<%@ include file="connect.jsp"%>
<%
String id=request.getParameter("t1");
String pass=request.getParameter("t2");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select pid,password from policelogin where pid='"+id+"' and password='"+pass+"'");
if (rs.next())
{
	response.sendRedirect("policelogin.html");
}
else
{
response.sendRedirect("error.html");
}
%>