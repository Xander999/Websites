
<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
.sign {
  padding: 15px 25px;
  font-size: 13px;
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
<h2>ANSWER TO QUERIES HERE:</h2>
<center>
<form action="query2.jsp" method=post targer="_blank">
<table>
<tr>
	<td><b>Email</b></td><td><input type=text name=qid></td>
</tr>
<tr>
	<td><b>Enter Queries</b></td><td><textarea name=addr rows=2 cols=42></textarea></td>
</tr>
</table>
<br>
<button class="sign" name="sub" >SUBMIT</button>
</form>
<br><br>
<%

try{
PreparedStatement pst=c.prepareStatement("SELECT * FROM Query;");
%>
<center>
<table border=1>
<tr><td><b>QUERYID</b></td><td><b>QUERIES</b></td><td><b>USER MAIL</b></td></tr>
<%
ResultSet rs=pst.executeQuery();
while(rs.next()){
%>
<tr><td><%=rs.getString("QID")%></td><td><%=rs.getString("QUERIES")%></td><td><%=rs.getString("EMAIL")%></td></tr>
<tr><td><b>Answer by Administrator:</b></td><td bgcolor=A6D2E0><%=rs.getString("ANS")%></td></tr>
<%
}
c.close();
}catch(Exception e){out.println(e);}
%>
</table>
</center>
