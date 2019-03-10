<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<%  
String stid=(String)session.getAttribute("STDID");
String pass=(String)session.getAttribute("PASS");

String honors=request.getParameter("hd");
session.setAttribute("hon",honors);
try{
PreparedStatement ps=c.prepareStatement(" Update SUB set HONS=? where STD_ID=? ;");
ps.setString(1,honors);
ps.setString(2,stid);
int t=ps.executeUpdate();
String pass1="",pass2="",sts="";
PreparedStatement ps1=c.prepareStatement("select * from SUBCOMBO where HONS=?;");
ps1.setString(1,honors);
ResultSet rs=ps1.executeQuery();
if(t>0){
%>
<center>
<h3>HONORS UPDATED SUCCESSFULLY</h3>
<form action="ch23.jsp" method=post>
<table border=2>
<tr>
	<td><b>CHOOSE</b></td><td><b>PASS1</b></td><td><b>PASS2</b></td>
</tr>
<%
while(rs.next()){
pass1=rs.getString("PASS1");
pass2=rs.getString("PASS2");
sts=pass1+"/"+pass2;
%>
<tr>
	<td><input type=radio name="subco" value=<%=sts%>></td><td><%=pass1%></td><td><%=pass2%></td>
</tr>
<%
}
%>
</table><br><br>
<button name=sgg id=b11>CHANGE</button>
</form>
</center>
<%
}
}catch(Exception e){ out.println(e);}
%>