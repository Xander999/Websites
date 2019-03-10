
<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<h2>STUDENT DETAILS<h2>
<br><br>
<%@include file="connect.jsp"%>
<%

try{
PreparedStatement pst=c.prepareStatement("SELECT * FROM STD;");
%>
<center>
<table border=1>
<tr><td><b>STUDENTID</b></td><td><b>NAME</b></td><td><b>DATE OF BIRTH</b></td><td><b>PHONE NO.</b></td><td><b>EMAIL</b></td><td><b>ADRESS</b></td><td><b>GENDER</b></td></tr>
<%
ResultSet rs=pst.executeQuery();
while(rs.next()){
%>
<tr><td><%=rs.getString("STD_ID")%></td><td><%=rs.getString("NAME")%></td><td><%=rs.getString("DOB")%></td><td><%=rs.getString("PHN")%></td><td><%=rs.getString("EMAIL")%></td><td><%=rs.getString("ADR")%></td><td><%=rs.getString("GEN")%></td></tr>
<%
}
c.close();
}catch(Exception e){out.println(e);}
%>
</table>
</center>