<%@ page language="java"%>
<%!
int i,j;
%>

<html>

<head>
<title>www.pssoft.com</title>
<link rel="stylesheet" type="text/css" href="complain.css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript" src="js/validation.js"></script>
</head>

<body bgcolor="#CCFFFF">
<h1 align="center">COMPLAINT FORM</h1>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="about.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="citizen.html">Back</a></h3>
<form name="f1" action="Complaint.jsp" method="get" onsubmit="return validateUserName()" align="center">
<center>
<p>&nbsp;</p>
<p>&nbsp;</p>

<table align="center">
<tr><td>Name :</td><td><input type="text" name="tn" ></td></tr> 
<tr> <td> <br> </td> </tr>
<tr><td>Father's Name/Husband's Name :</td><td><input type="text" name="fhn" ></td></tr> 
<tr> <td> <br> </td> </tr>
<tr><td>Age :</td><td><input type="text" name="age">&nbsp;&nbsp;&nbsp;Yrs.</td></tr> 
<tr> <td> <br> </td> </tr>
<tr><td>Occupation :</td><td><input type="text" name="toccup"></td></tr> 
<tr> <td> <br> </td> </tr>
<tr><td>Residantial Address :</td><td><textarea cols="25" rows="5" name="add"></textarea></td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>Contect Telephone no. :</td><td><input type="text" name="phno"></td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>Date of Offence :</td><td>dd<select name="dd">
<%
for( i=1;i<=31;i++)
{%>
<option value=<%=i%>><%=i%></option>
<%}
%>
</select>
&nbsp;&nbsp;mm<select name="mm">
<option value="january">january</option>
<option value="february">february</option>
<option value="march">march</option>
<option value="april">april</option>
<option value="may">may</option>
<option value="june">june</option>
<option value="july">july</option>
<option value="august">august</option>
<option value="september">september</option>
<option value="october">october</option>
<option value="november">november</option>
<option value="december">december</option>
</select>
yy<select name="yy">
<%
for(j=1975;j<=2050;j++)
{%>
<option value="<%=j%>"><%=j%></option>
<%}
%>
</select>
</td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>Time of Offence:</td><td>hh<select name="hh">
<%
for( i=0;i<=23;i++)
{%>
<option value="<%=i%>"><%=i%></option>
<%}
%>
</select>
&nbsp;&nbsp;mm<select name="mm1">
<%
for( i=0;i<=59;i++)
{%>
<option value="<%=i%>"><%=i%></option>
<%}%>
</select>
</td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>District :</td><td><select name="dist">
<option value="Anugul">Anugul</option>
<option value="Boudh">Boudh</option>
<option value="Balangir">balangir</option>
<option value="Bargardh">Bargardh</option>
<option value="Balasore">Balasore</option>
<option value="Bhadrak">Bhadrak</option>
<option value="Cuttack">Cuttack</option>
<option value="Deogardh">Deogardh</option>
<option value="Dhenkanal">Dhankanal</option>
<option value="Ganjam">Ganjam</option>
<option value="Gajapati">Gajapati</option>
<option value="Jharsuguda">Jharsuguda</option>
<option value="Jajpur">Jajpur</option>
<option value="Jagatsinghapur">Jagatsinghapur</option>
<option value="Khordha">Khordha</option>
<option value="Keonjhar">Keonjhar</option>
<option value="Kalahandi">Kalahandi</option>
<option value="Kandhamal">Kandhamal</option>
<option value="Koraput">Koraput</option>
<option value="Kendrapara">Kendrapara</option>
<option value="Malkangiri">Malkangiri</option>
<option value="Mayurbhanj">Mayurbhanj</option>
<option value="Nabarangpur">Nabarangpur</option>
<option value="Nuapada">Nuapada</option>
<option value="Nayagardh">Nayagardh</option>
<option value="puri">Puri</option>
<option value="Rayagada">Rayagada</option>
<option value="Sambalpur">Sambalpur</option>
<option value="Subarnpur">Subarnpur</option>
<option value="Sundargardh">Sundargardh</option>
</select>
</td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>Police-Station</td><td><input type="text" name="pstation"></td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>Area of Offense :</td><td><input type="text" name="aoff"></td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>Lost Property and its particulars:</td><td><textarea cols=25 rows=5 name="property"></textarea></td></tr>
<tr> <td> <br> </td> </tr>
<tr><td>Complaint :</td><td><textarea cols=25 rows=5 name="comp"></textarea></td></tr>
<tr> <td> <br> </td> </tr>
<tr><td><input type=submit value="Submit"></td><td><input type=reset value=Reset></td></tr>
</table>
</center> <br> <br> <br> <br> <br> 
</form>
</body>
</html>
