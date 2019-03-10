
<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}

#div1{
	float:center;
	margin-top:10px;
	margin-left:5px;
	height:25px;
	background:#D6C3D5;
	border:groove;
	color:red;
}
#div2{
	float:center;
	margin-top:40px;
	margin-left:70px;
	height:500px;
	width:700px;;
	border:groove;
	background:#E6E0BC;
}
}
</style>
<%@include file="connect.jsp"%>

<%
 String aname=request.getParameter("uid");
String apass=request.getParameter("pwd");


String st="";
String ts="";
try{
PreparedStatement pst=c.prepareStatement("SELECT * FROM ADMIN;");
ResultSet rs=pst.executeQuery();

while(rs.next()){
st=rs.getString("AD_NAME");
ts=rs.getString("AD_PASS");
}
}
catch(Exception e){ out.println("fetch"+e); }


if(st.equals(aname) && ts.equals(apass)){
%>
<center><h2>WELCOME XANDER</h2></center>
<div id="div1">
<form action="" method=post>

<input type=submit value=STUDENT_DETAILS  formaction="stddetails.jsp">    |
<input type=submit value=ADMIT formaction="insertpro/insert.jsp">   |
<input type=submit value="CHANGE PASSWORD" formaction="passchange.jsp">    |
<input type=submit value=NOTIFY formaction="notify.jsp">   |
<input type=submit value="CHECK QUERY" formaction="chckquery.jsp">  |
<input type=submit value=LOGOUT formaction="logout.jsp">
</form>
</div>

<div id="div2">

</div>
<%
}
else{
%>
<center><h2>WRONG USERNAME AND PASSWORD</h2>
<br>
<br>
<a href="Admin.jsp">BACK</a></center>
<%
}

%>

