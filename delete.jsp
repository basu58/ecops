<%@ include file="connect.jsp"%>
<%
String mailno=request.getParameter("mailno");
Statement st=con.createStatement();
int n=st.executeUpdate("delete from inbox where mailno='"+mailno+"'");
if(n==1)
{
	response.sendRedirect("maillogin.jsp");
}
%>