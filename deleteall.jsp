<%@ include file="connect.jsp"%>
<%
String mailid=(String)session.getAttribute("mailid");
Statement st=con.createStatement();
int n=st.executeUpdate("delete from inbox where mailid='"+mailid+"'");
if(n>0)
{
	response.sendRedirect("maillogin.jsp");
}
%>