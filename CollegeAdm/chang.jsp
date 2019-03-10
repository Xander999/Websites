

<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>

<%
String pas="";
pas=request.getParameter("pass21");

try{
PreparedStatement pst=c.prepareStatement("UPDATE ADMIN SET AD_PASS=? WHERE AD_NAME='XANDER';");
pst.setString(1,pas);
int t=pst.executeUpdate();
if(t>0)
out.println("Password Updated Successfully");
else 
out.println("Password Updated UnSuccessfully");
c.close();
}catch(Exception e){out.println(e);}
%>
<center>
<a href="Admin.jsp"><b>BACK</b></a>
</center>