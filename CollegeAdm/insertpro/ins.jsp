<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<%  String fname=request.getParameter("nm1");
String lname=request.getParameter("nm2");
String name=fname+" "+lname;
String pic=request.getParameter("pic");
String pass=request.getParameter("pass");
String dob=request.getParameter("date");
String phno=request.getParameter("phn");
String email=request.getParameter("email");
String address=request.getParameter("addr");
String gen=request.getParameter("gen");

int math=Integer.parseInt(request.getParameter("mathnm"));
int eng=Integer.parseInt(request.getParameter("engnm"));
int phy=Integer.parseInt(request.getParameter("phynm"));
int secl=Integer.parseInt(request.getParameter("secnm"));
int chem=Integer.parseInt(request.getParameter("chenm"));
int evs=Integer.parseInt(request.getParameter("evsnm"));
int bico=Integer.parseInt(request.getParameter("biocomnm"));  
String honors=request.getParameter("hd");

String st="";
int stid=0;
	try{
	PreparedStatement pst=c.prepareStatement("select max(STD_ID) from STD;");
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	stid=rs.getInt(1);
	stid++;
	st=String.valueOf(stid);
	}
	catch(Exception e){out.println("fetch"+e);}

try{
PreparedStatement ps=c.prepareStatement("insert into STD(STD_ID,NAME,PIC,PASS,DOB,PHN,EMAIL,ADR,GEN) values(?,?,?,?,?,?,?,?,?);");

ps.setString(1,st);
ps.setString(2,name);
ps.setString(3,pic);
ps.setString(4,pass);
ps.setString(5,dob);
ps.setString(6,phno);
ps.setString(7,email);
ps.setString(8,address);
ps.setString(9,gen);

PreparedStatement ps1=c.prepareStatement("insert into STDMAR(STD_ID,MATH,PHY,CHEM,ENG,SND,EVS,BICO) values(?,?,?,?,?,?,?,?);");
ps1.setString(1,st);
ps1.setInt(2,math);
ps1.setInt(3,phy);
ps1.setInt(4,chem);
ps1.setInt(5,eng);
ps1.setInt(6,secl);
ps1.setInt(7,evs);
ps1.setInt(8,bico);

PreparedStatement ps2=c.prepareStatement("insert into SUB(STD_ID,HONS) values(?,?);");
ps2.setString(1,st);
ps2.setString(2,honors);

int t=ps.executeUpdate();
int j=ps1.executeUpdate();
int u=ps2.executeUpdate();
if(t>0 && j>0 &&u>0)
%>
<body>
<center><b>ACCOUNT CREATED SUCCESSFULLY<b><br><br>
	<b>YOUR STUDENT ID IS:<%=st%></b>
</center>

</body>
<h3>HONORS TAKEN :</h3> <%=honors%>
<center>
<p>Select anyone of the Pass Subjects. <br>Pass subjects offered here are :</p>
<form action="choose.jsp" method=post>
<table border=2>
<tr>
	<td><b>CHOOSE</b></td><td><b>PASS1</b></td><td><b>PASS2</b></td>
</tr>
<%
}catch(Exception e){out.println("Insert section    "+e);}

String pass1="",pass2="",sts="";
session.setAttribute("stdid",st);
session.setAttribute("hon",honors);
try{
PreparedStatement pst3=c.prepareStatement("select * from SUBCOMBO where HONS=?;");
pst3.setString(1,honors);

ResultSet rs11=pst3.executeQuery();
while(rs11.next()){
pass1=rs11.getString("PASS1");
pass2=rs11.getString("PASS2");
sts=pass1+"/"+pass2;
%>
<tr>
	<td><input type=radio name="subco" value=<%=sts%>></td><td><%=pass1%></td><td><%=pass2%></td>
</tr>
<%
}
}catch(Exception e){ out.println("Subject choice Section   "+e);}
%>
</table><br><br>
<button name=submit>ENTER</button>
</form>

</center>
