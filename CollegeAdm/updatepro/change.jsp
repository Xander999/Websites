<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<%  
String stid=(String)session.getAttribute("STDID");
String pass=(String)session.getAttribute("PASS");

String pic=request.getParameter("pic");
String pas=request.getParameter("pass");
String date=request.getParameter("date");
String phn=request.getParameter("phn");
String email=request.getParameter("email");
String addr=request.getParameter("addr");
String gen=request.getParameter("gen");

try{
PreparedStatement ps=c.prepareStatement(" Update STD set PIC=?, PASS=?, DOB=?, PHN=?, EMAIL=?, ADR=?, GEN=? where STD_ID=? ;");
ps.setString(1,pic);
ps.setString(2,pas);
ps.setString(3,date);
ps.setString(4,phn);
ps.setString(5,email);
ps.setString(6,addr);
ps.setString(7,gen);
ps.setString(8,stid);

int t=ps.executeUpdate();

if(t>0){
%>
<center>
<h3>ACCOUNT UPDATED SUCCESSFULLY</h3>
<form action="up.jsp" method=post>
<input type=hidd name="stn" value=<%=stid%> style="visibility:hidden"/>
<input type=h name="pass" value=<%=pas%> style="visibility:hidden"/><br><br>
<button name=pop id=b1>BACK</button>
</form>
</center>
<%
}
}catch(Exception e){ out.println(e);}
%>