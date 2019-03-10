<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<%
String sub=request.getParameter("subco");
String pass[]=sub.split("/");
String st=(String)session.getAttribute("stdid");
String hons=(String)session.getAttribute("hon");
try{
PreparedStatement pst=c.prepareStatement("insert into SUBCHO(STD_ID,HONS,PASS1,PASS2) values(?,?,?,?);");
pst.setString(1,st);
pst.setString(2,hons);
pst.setString(3,pass[0]);
pst.setString(4,pass[1]);

int t=pst.executeUpdate();
if(t>0){
%>
<center>
<h4>Subject Choose Completed</h4>
<br><br><br><a href="../index.html"><b>BACK</b></a>
</center>
<%
}
else{
out.println("Error");
}
}catch(Exception e){ out.println(e);  }
%>