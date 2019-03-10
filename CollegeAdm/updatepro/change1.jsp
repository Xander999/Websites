<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<%  
String stid=(String)session.getAttribute("STDID");
String pass=(String)session.getAttribute("PASS");

String math=request.getParameter("math");
String phy=request.getParameter("phy");
String chem=request.getParameter("chem");
String eng=request.getParameter("eng");
String snd=request.getParameter("snd");
String evs=request.getParameter("evs");
String bico=request.getParameter("bico");

try{
PreparedStatement ps=c.prepareStatement(" Update STDMAR set MATH=?, PHY=?, CHEM=?, ENG=?, SND=?, EVS=?, BICO=? where STD_ID=? ;");
ps.setString(1,math);
ps.setString(2,phy);
ps.setString(3,chem);
ps.setString(4,eng);
ps.setString(5,snd);
ps.setString(6,evs);
ps.setString(7,bico);
ps.setString(8,stid);

int t=ps.executeUpdate();

if(t>0){
%>
<center>
<h3>ACCOUNT UPDATED SUCCESSFULLY</h3>
<form action="up.jsp" method=post>
<input type=hidd name="stn" value=<%=stid%> style="visibility:hidden"/>
<input type=h name="pass" value=<%=pass%> style="visibility:hidden"/><br><br>
<button name=pop id=b1>BACK</button>
</form>
</center>
<%
}
}catch(Exception e){ out.println(e);}
%>