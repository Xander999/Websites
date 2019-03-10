<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<center>
<%
String stid=(String)session.getAttribute("STDID");
String pass=(String)session.getAttribute("PASS");
String honors=(String)session.getAttribute("hon");

String d=request.getParameter("subco");
String paa[]=d.split("/");
try{
PreparedStatement ps=c.prepareStatement("update SUBCHO set HONS=?, PASS1=?, PASS2= ? where STD_ID=?;");
ps.setString(1,honors);
ps.setString(2,paa[0]);
ps.setString(3,paa[1]);
ps.setString(4,stid);

int t=ps.executeUpdate();
if(t>0){
%>
<h3> PASS SUBJECTS ARE UPDATED AUTOMATICALLY</h3>
<form action="up.jsp" method=post>
<input type=hidd name="stn" value=<%=stid%> style="visibility:hidden"/>
<input type=h name="pass" value=<%=pass%> style="visibility:hidden"/><br><br>
<button name=pop id=b1>BACK</button>
</form>
<%
}
}catch(Exception e){out.println(e); }
c.close();
%>
</center>