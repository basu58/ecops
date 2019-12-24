<%@ include file="connect.jsp"%>
<html>
<head>
<title>www.pssoft.com</title>
</head>
<center>
<form action="fir.jsp" method="post">
<body bgcolor="#00CCFF">
<h2><U style="background:white;color:#990066">First Information Report</U></h2>
<h3 align="right"><a href="home.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="policelogin.html">Back</a></h3>
<br><br>
</center>
<B style="position:absolute;left:30;top:100;color:#990066;font-size:20">District</B><select name="dist" style="position:absolute;left:100;top:100">
<option value="Hyderabad">Hyderabad</option>
<option value="East Godawadi">East Godawadi</option>
<option value="West Godawadi">West Godawadi</option>
<option value="Krishna">Krishna</option>
<option value="Vijaywada">Vijaywada</option>
<option value="Vizaq">Vizaq</option>
<option value="Guntur">Guntur</option>
<option value="Shrikakulam">Shrikakulam</option>
<option value="Neloor">Neloor</option>
<option value="Chitoor">Chitoor</option>
<option value="Odisha">Odisha</option>
</select>
<B style="position:absolute;color:#990066;font-size:20;left:300;top:100">Police&nbsp;station</B>
<input type="text" name="t1" style="position:absolute;left:420;top:100">


<B style="position:absolute;color:#990066;font-size:20;left:30;top:200">Year</B>
<input type="text" name="t2" style="position:absolute;left:100;top:200;width:125">

<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from fir");
int fir=0;
if(rs.next())
{
	fir=rs.getInt(1)+1;
}
%>



<B style="position:absolute;color:#990066;font-size:20;left:300;top:200">FIR No.</B>
<input type="text" name="t3" style="position:absolute;left:420;top:200" value="F<%=fir%>">


<B style="position:absolute;color:#990066;font-size:20;left:30;top:300">1. Acts & Sections</B>
<input type="text" name="t4" style="position:absolute;left:200;top:300">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:350">a) Occurrence of offence :</B><br>

<B style="position:absolute;color:#990066;font-size:20;left:80;top:400">Day</B><input type="text" name="t5" style="position:absolute;left:130;top:400">

<B style="position:absolute;color:#990066;font-size:20;left:300;top:400">Date From</B><input type="text" name="t6" style="position:absolute;left:400;top:400">

<B style="position:absolute;color:#990066;font-size:20;left:570;top:400">Date to</B><input type="text" name="t7" style="position:absolute;left:640;top:400">


<B style="position:absolute;color:#990066;font-size:20;left:80;top:450">Time</B><input type="text" name="t8" style="position:absolute;left:130;top:450">

<B style="position:absolute;color:#990066;font-size:20;left:300;top:450">Time From</B><input type="text" name="t9" style="position:absolute;left:400;top:450">

<B style="position:absolute;color:#990066;font-size:20;left:570;top:450">Time to</B><input type="text" name="t10" style="position:absolute;left:640;top:450">


<B style="position:absolute;color:#990066;font-size:20;left:50;top:500">b) Information recieved at :</B>

<B style="position:absolute;color:#990066;font-size:20;left:350;top:500">Date</B><input type="text" name="t11" style="position:absolute;left:400;top:500">


<B style="position:absolute;color:#990066;font-size:20;left:570;top:500">Time</B><input type="text" name="t12" style="position:absolute;left:640;top:500">


<B style="position:absolute;color:#990066;font-size:20;left:30;top:550">2. Type of information</B>
<input type="text" name="t13" style="position:absolute;left:230;top:550;width:315">


<B style="position:absolute;color:#990066;font-size:20;left:50;top:600">a) Place of Occurrence :</B>

<B style="position:absolute;color:#990066;font-size:20;left:250;top:620">Distance & direction</B><input type="text" name="t14" style="position:absolute;left:430;top:620">

<B style="position:absolute;color:#990066;font-size:20;left:590;top:620">Beat No.</B><input type="text" name="t15" style="position:absolute;left:660;top:620">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:670">b) Place :</B><input type="text" name="t16" style="position:absolute;left:200;top:670;width:350">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:720">Street/Village</B><input type="text" name="t17" style="position:absolute;left:200;top:720;width:350">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:770">Area/Mandal</B><input type="text" name="t18" style="position:absolute;left:200;top:770;width:350">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:830">City/District</B><input type="text" name="t19" style="position:absolute;left:200;top:830;width:350">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:880">State</B><input type="text" name="t20" style="position:absolute;left:200;top:880;width:350">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:930">If outside the limits of this police station, then the name and address of concerned police station.</B>

<textarea name="t21" style="position:absolute;left:50;top:980;width:350;height:100"></textarea>

<B style="position:absolute;color:#990066;font-size:20;left:50;top:1120">Complainant/Informer :</B>

<B style="position:absolute;color:#990066;font-size:20;left:100;top:1170">a) Name</B><input type="text" name="t22" style="position:absolute;left:350;top:1170">

<B style="position:absolute;color:#990066;font-size:20;left:100;top:1220">b) Father's/Husband's name</B><input type="text" name="t23" style="position:absolute;left:350;top:1220">

<B style="position:absolute;color:#990066;font-size:20;left:100;top:1270">c) Date of birth(dd/mm/yy)</B><input type="text" name="t24" style="position:absolute;left:350;top:1270">

<B style="position:absolute;color:#990066;font-size:20;left:100;top:1320">d) Nationality</B><input type="text" name="t25" style="position:absolute;left:350;top:1320">

<B style="position:absolute;color:#990066;font-size:20;left:100;top:1370">e) Passport No.</B><input type="text" name="t26" style="position:absolute;left:350;top:1370">

<B style="position:absolute;color:#990066;font-size:20;left:100;top:1420">f) Occupation</B><input type="text" name="t27" style="position:absolute;left:350;top:1420">

<B style="position:absolute;color:#990066;font-size:20;left:100;top:1470">g) Address of informer </B><input type="text" name="t28" style="position:absolute;left:350;top:1470">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:1520">Reason for delay in reporting by the informer</B>

<textarea name="t29" style="position:absolute;left:50;top:1540;width:350;height:100"></textarea>

<B style="position:absolute;color:#990066;font-size:20;left:50;top:1690">Particulars of crime</B>

<textarea name="t30" style="position:absolute;left:50;top:1710;width:350;height:100"></textarea>

<B style="position:absolute;color:#990066;font-size:20;left:50;top:1860">Inquest Report/U.D. case No.</B><input type="text" name="t31" style="position:absolute;left:350;top:1860">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:1910">Contents of  complaint/Statement of the complianant/Informer</B>
<textarea name="t32" style="position:absolute;left:50;top:1930;width:350;height:100"></textarea>

<B style="position:absolute;color:#990066;font-size:20;left:50;top:2080">Action taken</B><input type="text" name="t33" style="position:absolute;left:350;top:2080">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:2130">Investigator Name</B><input type="text" name="t34" style="position:absolute;left:350;top:2130">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:2180">Investigator Rank</B><input type="text" name="t35" style="position:absolute;left:350;top:2180">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:2230">Investigator ID</B><input type="text" name="t36" style="position:absolute;left:350;top:2230">

<B style="position:absolute;color:#990066;font-size:20;left:50;top:2280">Case transfered to</B><input type="text" name="t37" style="position:absolute;left:350;top:2280">

<input type="checkbox" name="t38" style="position:absolute;left:50;top:2330"><B style="position:absolute;color:#990066;font-size:20;left:70;top:2330">F.I.R. read over the complainant/informer, admitted to be correctly recorded and a copy given to complainant free of cost.</B>


<input type="submit" style="position:absolute;background:#990066;left:170;font-size:25;top:2430;width:100;height:80;color:#FFFFFF" value="Submit">

<input type="reset" style="position:absolute;background:#990066;left:370;top:2430;font-size:25;width:100;height:80;color:#FFFFFF" value="Reset">
</body>
</form>
</html>