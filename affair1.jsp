<%@ include file="connect.jsp"%>
<%
String but=request.getParameter("s1");
String affair=request.getParameter("affair");
if(but!=null)
{	
	String ano="1";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(ano) from curaffairs");
	if(rs.next())
	{
		String ano1=rs.getString(1);
		if(ano1!=null)
		ano=String.valueOf(1+Integer.parseInt(ano1));
	}
	Statement st1=con.createStatement();
	int n=st1.executeUpdate("insert into curaffairs values('"+ano+"','"+affair+"')");
	if(n==1)
	{
		response.sendRedirect("affair.jsp");
	}
}
else
{
	String ano=request.getParameter("ano");
	Statement st1=con.createStatement();
	int n=st1.executeUpdate("delete from curaffairs where ano='"+ano+"'");
	if(n==1)
	{
		response.sendRedirect("affair.jsp");
	}
}
%>