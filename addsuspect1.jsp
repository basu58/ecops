<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="affair1.css">
<link rel="stylesheet" type="text/css" href="addsuspect.css">
</head>
<body style="background:#99FFFF">
<center>
<h1 style="background:#CC3399;width:30%;color:#CCCCFF;font-family:cursive">Add Suspect</h1><hr  style="color:#CC3399">
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="suspect.jsp">Back</a></h3>
<form name="form1" method="post" action="addsuspect.jsp">
  <p><strong><span class="style1" style="color:#CC3399">Enter suspect name </span></strong>
     &nbsp; <input type="text" name="t0" style="width:170;height:30">
	 <br><p><strong><span class="style1" style="color:#CC3399">Select FIR No. </span></strong>
	 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name="t1" style="width:170;height:30">
	 <%
	 Statement st=con.createStatement();
	 ResultSet rs=st.executeQuery("select fno from fir");
	 while(rs.next())
	 {
	 String fir=rs.getString(1);
	 %>
	 <option value=<%=fir%>><%=fir%></option>
	 <%
	 }
	 %>
	 </select>
         <br><br><br> <br> <br>
	 <input type="submit"  value="Add"> &nbsp;&nbsp;&nbsp; <input type="reset" value="Reset">
</form>
</center>
</body>
</html>