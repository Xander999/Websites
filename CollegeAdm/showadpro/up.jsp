<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<h1>APPLICANT FORM PAGE</h1>
<%@include file="connect.jsp"%>

<%
int abn=0;
String a=request.getParameter("stn");
String b=request.getParameter("pass");
%>
<center>
	<h2>STUDENTS ID :<%=a%></h2>
</center>
<fieldset>
<legend><h3>STUDENT'S BIO DETAILS</h3></legend>
<%
String name="",pic="",pass="",dob="",phn="",email="",adr="",gen="";
try{
PreparedStatement pst=c.prepareStatement("select * from STD where STD_ID=? and PASS=?;");
 pst.setString(1,a);
pst.setString(2,b);

ResultSet rs=pst.executeQuery();
if(rs.next()){
abn=1;
name=rs.getString("NAME");
pic=rs.getString("PIC");
pass=rs.getString("PASS");
dob=rs.getString("DOB");
phn=rs.getString("PHN");
email=rs.getString("EMAIL");
adr=rs.getString("ADR");
gen=rs.getString("GEN");

%>
<html>
<body>
<center>
<table border=2>
<tr>
	<td><b>NAME</b></td>
	<td><%=name%></td>
</tr>
<tr>
	<td><b>ENTER YOUR PICTURE</b></td>
	<td><%=pic%></td>
</tr>
<tr>
	<td><b>PASSWORD</b></td>
	<td><%=pass%></td>
</tr>
<tr>
	<td><b>DATE OF BIRTH</b></td>
	<td><%=dob%></td>
</tr>
<tr>
	<td><b>PHONE NO.</b></td>
	<td><%=phn%></td>
</tr>
<tr>
	<td><b>EMAIL-ID</b></td>
	<td><%=email%></td>
</tr>
<tr>
	<td><b>ADDRESS</b></td>
	<td><%=adr%></td>
</tr>
<tr>
	<td><b>GENDER</b></td>
	<td>
	<b><%=gen%></b>
	</td>
</tr>


</table>
</center>
</fieldset>
<%
}
else{
out.println("Wrong Student ID");
}
}catch(Exception e){ out.println(e);}

if(abn==1){
%>
<fieldset>
<legend><h3>STUDENT'S 12 MARKS DETAILS</h3></legend>
<center>
<%
String math="",phy="", chem="",eng="",snd="",evs="",bico="";
try{
PreparedStatement pst1=c.prepareStatement("select * from STDMAR where STD_ID=?;");
pst1.setString(1,a);
ResultSet rs1=pst1.executeQuery();
if(rs1.next()){
math=rs1.getString("MATH");
phy=rs1.getString("PHY");
chem=rs1.getString("CHEM");
eng=rs1.getString("ENG");
snd=rs1.getString("SND");
evs=rs1.getString("EVS");
bico=rs1.getString("BICO");
%>
<table border=2>
<tr>
	<td><b>SUBJECT</b></td>
	<td><b>MARKS</b></td>
</tr>
	<td><b>MATH</b></td>
	<td><%=math%></td>
</tr>
</tr>
	<td><b>PHYSICS</b></td>
	<td><%=phy%></td>
</tr>
</tr>
	<td><b>CHEMISTRY</b></td>
	<td><%=chem%></td>
</tr>
</tr>
	<td><b>ENGLISH</b></td>
	<td><%=eng%></td>
</tr>
</tr>
	<td><b>SECOND LANGUAGE</b></td>
	<td><%=snd%></td>
</tr>
</tr>
	<td><b>EVS</b></td>
	<td><%=evs%></td>
</tr>
</tr>
	<td><b>BIOLOGY/COMPUTER SCIENECE</b></td>
	<td><%=bico%></td>
</tr>
</table><br><br>
</fieldset>
<%
}
else{
out.println("Wrong student ID");
}
}catch(Exception e){ out.println(e);}
%>
</center>
<fieldset>
<legend><h3>STUDENTS SUBJECT CHOICE</h3></legend>
<center>
<table border=2>
<%
try{
String hons="",pass1="",pass2="";
PreparedStatement pss=c.prepareStatement("select * from SUBCHO where STD_ID=?;");
pss.setString(1,a);
ResultSet ra=pss.executeQuery();
if(ra.next()){
hons=ra.getString("HONS");
pass1=ra.getString("PASS1");
pass2=ra.getString("PASS2");
%>
<tr>
	<td><b>HONORS</b></td>
	<td>
	<%=hons%>
	</td>
</tr>
<tr>
	<td><b>PASS 1</b></td><td><%=pass1%></td>
</tr>
<tr>
	<td><b>PASS2</b></td><td><%=pass2%></td>
</tr>
</table>
</center>
</fieldset>
<%
}
else{}
}catch(Exception e){ out.println(e); }
c.close();
}
%>
</body>
</html>
