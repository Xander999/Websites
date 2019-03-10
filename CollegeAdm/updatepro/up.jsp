<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<h1>EDIT PAGE</h1>
<fieldset>
<legend><h3>STUDENT'S BIO DETAILS</h3></legend>
<%@include file="connect.jsp"%>

<%
int abn=0;
String a=request.getParameter("stn");
session.setAttribute("STDID",a);
String b=request.getParameter("pass");
session.setAttribute("PASS",b);
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

<form action="change.jsp" method=post>
<table border=2>
<tr>
	<td><b>NAME</b></td>
	<td><%=name%></td>
</tr>
<tr>
	<td><b>ENTER YOUR PICTURE</b></td>
	<td><input type="file" name="pic" accept="image/*"  value=<%=pic%>></td>
</tr>
<tr>
	<td><b>PASSWORD</b></td>
	<td><input type=text name=pass size=40 value=<%=pass%>></td>
</tr>
<tr>
	<td><b>DATE OF BIRTH</b></td>
	<td><input type=date name=date value=<%=dob%>></td>
</tr>
<tr>
	<td><b>PHONE NO.</b></td>
	<td><input type=text name=phn size=40 value=<%=phn%>></td>
</tr>
<tr>
	<td><b>EMAIL-ID</b></td>
	<td><input type=text name=email size=40 value=<%=email%>></td>
</tr>
<tr>
	<td><b>ADDRESS</b></td>
	<td><textarea name=addr rows=4 cols=42 ><%=adr%></textarea></td>
</tr>
<tr>
	<td><b>GENDER</b></td>
	<td>
	||<b><%=gen%></b> ||
	<input type=radio name=gen value=Male>Male
	<input type=radio name=gen value=Female>Female
	<input type=radio name=gen value=Others >Others
	</td>
</tr>


</table><br><br>
<button name=jhs id=b12>CHANGE</button>
</form>
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
<form action="change1.jsp" method=post>
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
	<td><input type=text name=math value=<%=math%>></td>
</tr>
</tr>
	<td><b>PHYSICS</b></td>
	<td><input type=text name=phy value=<%=phy%>></td>
</tr>
</tr>
	<td><b>CHEMISTRY</b></td>
	<td><input type=text name=chem value=<%=chem%>></td>
</tr>
</tr>
	<td><b>ENGLISH</b></td>
	<td><input type=text name=eng value=<%=eng%>></td>
</tr>
</tr>
	<td><b>SECOND LANGUAGE</b></td>
	<td><input type=text name=snd value=<%=snd%>></td>
</tr>
</tr>
	<td><b>EVS</b></td>
	<td><input type=text name=evs value=<%=evs%>></td>
</tr>
</tr>
	<td><b>BIOLOGY/COMPUTER SCIENECE</b></td>
	<td><input type=text name=bico value=<%=bico%>></td>
</tr>
</table><br><br>
<button name=pop1 id=b45>CHANGE</button>
</fieldset>
<%
}
else{
out.println("Wrong student ID");
}
}catch(Exception e){ out.println(e);}
%>
</form>
</center>
<fieldset>
<legend><h3>STUDENTS SUBJECT CHOICE</h3></legend>
<center>
<form action="change2.jsp" method=post>
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
	<select name=hd>
	<option><%=hons%></option>
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
	<td><b>PASS 1</b></td><td><%=pass1%></td>
</tr>
<tr>
	<td><b>PASS2</b></td><td><%=pass2%></td>
</tr>
</table><br><br>
<button name=ll id=b78>CHANGE</button>
</form>
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
