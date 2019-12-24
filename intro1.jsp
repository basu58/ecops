<%@ include file="connect.jsp"%>
<%@ taglib uri="taglib" prefix="tag"%>
<%
String s1=request.getParameter("s1");
String s2=(String)session.getAttribute("sno");
String s3=(String)session.getAttribute("fno");
String s4=(String)session.getAttribute("name");
if(s1.equals("More Question"))
{
	try
	{
		for(int i=1;i<=20;i++)
		{
			String question=request.getParameter("t"+i);
			String answer=request.getParameter("t"+(i+1));
			if(!question.equals("")||!answer.equals(""))
			{
%>
<tag:insert sno="<%=s2%>" firno="<%=s3%>" name="<%=s4%>" question="<%=question%>" answer="<%=answer%>">intro</tag:insert>
<%
			}

		i++;
		}
	}
	catch(Exception e)
	{}
	response.sendRedirect("intro.jsp");
}
else if(s1.equals("End Introgation"))
{
	try
	{
		for(int i=1;i<=20;i++)
		{
			String question=request.getParameter("t"+i);
			String answer=request.getParameter("t"+(i+1));
			if(!question.equals("")||!answer.equals(""))
			{
%>
<tag:insert sno="<%=s2%>" firno="<%=s3%>" name="<%=s4%>" question="<%=question%>" answer="<%=answer%>">intro</tag:insert>
<%
			}

		i++;
		}
		Statement st=con.createStatement();
		st.executeUpdate("update suspect set intro='yes' where sno="+s2+"");
	}
	catch(Exception e)
	{}
	response.sendRedirect("invsuschoice.jsp?link="+s2+"");
}
%>