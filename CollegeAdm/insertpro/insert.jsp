<html>
<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#42c425);
}
</style>
<%@include file="connect.jsp"%>
<head>
<script>
function calculate(){
var x1=document.getElementById("mathnm").value;
var x2=document.getElementById("phynm").value;
var x3=document.getElementById("chemnm").value;
var x4=document.getElementById("biocomnm").value;
var x5=document.getElementById("engnm").value;
var x6=document.getElementById("secnm").value;
var x7=document.getElementById("evsnm").value;
var sum=parseInt(x1)+parseInt(x2)+parseInt(x3)+parseInt(x4)+parseInt(x5)+parseInt(x6)+parseInt(x7);
var avg=sum=parseInt(sum)/7;
alert(avg);
document.getElementById("abc").value=avg;
}

function validateform(){
var x=document.forms["myform"]["nm1"].value;
var y=document.forms["myform"]["phn"].value;
if(x==""){
alert("FIRST NAME IS COMPULSORY");
return false;
}
if(document.forms["myform"]["nm2"].value==""){
alert("SECOND NAME IS COMPULSORY");
return false;
}
if(document.forms["myform"]["pic"].value==""){
alert("PICTURE MUST BE  UPLOADED");
return false;
}
if(document.forms["myform"]["pass"].value==""){
alert("ENTER A PASSWORD");
return false;
}
if(y.checkValidity()==false){
alert("ENTER YOUR VALID PHONE NUMBER ");
return false;
}
if(document.forms["myform"]["email"].value==""){
alert("ENTER YOUR email ADRESS");
return false;
}
if(document.forms["myform"]["addr"].value==""){
alert("ENTER YOUR ADDRESS");
return false;
}
}
</script>
<link rel="stylesheet" href="style.css"/>
</head>

<body>
<h2 style="color:purple;"><u>ENTER YOUR DETAILS</u></h2>
<font size="3.5" color="black"> <marquee> <merquee behavior= "Slide">.<img src="200.gif" height="20" width="70"> Enter Marks of all subjects in 100 percentage..
                Accoring to new convention from CBSCE only best four marks should be calculated..<img src="200.gif" height="20" width="70">.... </marquee></font>

<center>
<form name="myform" action=ins.jsp  method=post>
<table border=3 bgcolor="arup">
<tr>
	<td><b>FIRST NAME</b></td>
	<td><input type=text name=nm1 size=40 placeholder="Enter First Name"></td>
</t.r>
<tr>
	<td><b>LAST NAME</b></td>
	<td><input type=text name=nm2 size=40 placeholder="Enter Last Name"></td>
</tr>
<tr>
	<td><b>ENTER YOUR PICTURE</b></td>
	<td><input type="file" name=pic accept="image/*"></td>
</tr>
<tr>
	<td><b>PASSWORD</b></td>
	<td><input type=password name=pass size=40 placeholder="Enter Strong Password"  required></td>
</tr>
<tr>
	<td><b>DATE OF BIRTH</b></td>
	<td><input type=date name=date required></td>
</tr>
<tr>
	<td><b>PHONE NO.</b></td>
	<td><input type=number name=phn size=40 placeholder="Enter your valid Number" min="100000000" max="999999999" required></td>
</tr>
<tr>
	<td><b>EMAIL-ID</b></td>
	<td><input type=text name=email size=40 placeholder="EmailId"></td>
</tr>
<tr>
	<td><b>ADDRESS</b></td>
	<td><textarea name=addr rows=4 cols=42></textarea></td>
</tr>
<tr>
	<td><b>GENDER</b></td>
	<td>
	<input type=radio name=gen value=Male>Male
	<input type=radio name=gen value=Female>Female
	<input type=radio name=gen value=Others>Others
	</td>
</tr>
<tr>
	<th>Enter Marks Of Science Subjects</th>
	<th>Enter Marks Of Others Subjects</th>
</tr>
<tr>
	<td>MATH
	<input type=number name=mathnm id="mathnm" min="0" max="100" required>
	</td>
	<td>
	ENG
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type=number name=engnm id="engnm" min="0" max="100" reqiured>
	</td>
</tr>
<tr>
	<td>
	PHY
	&nbsp&nbsp&nbsp<input type=number name=phynm id="phynm" min="0" max="100" required>
	</td>
	<td>
	2<sup>nd</sup>LANG
	<input type=number name=secnm id="secnm" min="0" max="100" required>
	</td>
</tr>

<tr>
	<td>
	CHEM
	<input type=number name=chenm id="chemnm" min="0" max="100" required>
	</td>
	<td>
	EVS
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type=number name=evsnm id="evsnm" min="0" max="100" required>
	</td>
</tr>
<tr>
	<td>
	BIO-COMP
	<input type=number name=biocomnm id="biocomnm" min="0" max="100" required>
	</td>
	<td>
	<input type=button name=bt1 value=calculate onclick="return calculate()"><input type=text id="abc" name="cc">
	</td>
</tr>
<tr>
	<td><b>HONORS DEGREE</b></td>
	<td>
	<select name=hd>
	<option>select</option>
	<option value=MATHEMATICS>MATHEMATICS</option>
	<option value=PHYSICS>PHYSICS</option>	
	<option value=CHEMISTRY>CHEMISTRY</option>
	<option value=COMPUTER SCIENCE>COMPUTER SCIENCE</option>
	<option value=STATISTICS>STATISTICS</option>
	<option value=ELECTRONICS>ELECTRONICS</option>
	<option value=BIO-TECHNOLOGY>BIO-TECHNOLOGY</option>
	</td>
</tr>
<tr>
	<td><center><input type=submit value=SUBMIT name="submit"  onsubmit="validateform()"></center></td>
	<td><center><input type=reset value=RESET></center></td>
</tr>
</table>
</form>
</center>
<fieldset>
<legend><b>Points To Be Note Down</b></legend>
<div class="w3-panel w3-padding-8 w3-orange">
<p ><li>Enter all details of yours and information should be precise and correct.
<li>Correspondent Applicants should bring their Class XII marksheets for verification if selected in list.
<li>Providing Wrong information should not be considered valid and will be rejected imediately unless you bribe our president.
<li>Guardians of all correspondent student must bring all application of their income so that we can loot last amt. of money left in your account.
<li>Students can also enter the college by paying underdesk in dollars $$$ if they have any black money in Swiss Account.
</div></p> </fieldset>
</body>
</html>