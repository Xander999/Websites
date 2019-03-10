
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
<br><br>
<%
String qid=request.getParameter("tt");
String ansr=request.getParameter("addr");

try{
	PreparedStatement pst1=c.prepareStatement("Update Query set ANS=? where QID=? ;");
	pst1.setString(1,ansr);
	pst1.setString(2,qid);
	
int t=pst1.executeUpdate();
if(t>0){
%>
<body>
<center><b>ANSWER CHART UPDATED AUTOMATICALLY</b>
<br><br><br><a href="chckquery.jsp"><b>BACK</b></a>
</center>
</body>
<%
}
else{
out.println("Error404 in Entry");
}
}catch(Exception e){ out.println(e);}
%>
</table>
</center>
