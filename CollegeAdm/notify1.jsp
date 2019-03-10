
<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
.sign {
  padding: 15px 25px;
  font-size: 18px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.sign:hover {background-color: #3e8e41}

.sign:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
<%@include file="connect.jsp"%>
<br><br>
<center>
<h2>NOTIFICATIONS</h2>
<br><br>
<%

try{
PreparedStatement pst=c.prepareStatement("SELECT * FROM NOTIFI;");
%>
<table border=1>
<tr><td><b>NOTIFICATION-ID</b></td><td><b>NOTIFICATIONS</b></td><td><b>DATE OF DECLARATION</b></td></tr>
<%
ResultSet rs=pst.executeQuery();
while(rs.next()){
%>
<tr><td><%=rs.getString("NOTID")%></td><td><%=rs.getString("CONTENT")%></td><td><%=rs.getString("DAT")%></td></tr>
<%
}
c.close();
}catch(Exception e){out.println(e);}
%>
</table>
</center>