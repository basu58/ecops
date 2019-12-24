<%@ page language="java" import="java.sql.*,java.io.*,javax.swing.*,java.util.*" errorPage="error.jsp" %>
<%!
Connection con;
%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
con= DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
}
catch(SQLException e)
{
	e.printStackTrace();
}
%>