<%@ include file="connect.jsp"%>
<%
String cno=request.getParameter("cno");
Statement st=con.createStatement();
int n=st.executeUpdate("update complaint set status='accepted' where cno='"+cno+"'");
if (n==1)
{
	response.sendRedirect("adcom.jsp");
}
%>
