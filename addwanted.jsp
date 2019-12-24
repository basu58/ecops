<%@ include file="connect.jsp"%>
<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
String s5=application.getRealPath("/")+"file/"+request.getParameter("t5");
File f=new File(s5);
FileInputStream fis=new FileInputStream(f);
PreparedStatement ps=con.prepareStatement("insert into wanted values(?,?,?,?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,s3);
ps.setString(4,s4);
ps.setBinaryStream(5,fis,(int)f.length());
int n=ps.executeUpdate();
if(n==1)
{
	response.sendRedirect("wanted.jsp");
}
%>