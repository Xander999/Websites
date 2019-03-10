<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<%
String st=request.getParameter("addr");
String stid="";
int id=0;
java.util.Date dt=new java.util.Date();
String dt1=String.valueOf(dt);
try{
	PreparedStatement pst=c.prepareStatement("select max(NOTID) from NOTIFI;");
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	id=rs.getInt(1);
	out.println(id);
	id++;
	}
	catch(Exception e){out.println("fetch"+e);}
try{
	stid=String.valueOf(id);
	PreparedStatement pst1=c.prepareStatement("insert into NOTIFI(NOTID,CONTENT,DAT) values(?,?,?);");
	pst1.setString(1,stid);
	pst1.setString(2,st);
	pst1.setString(3,dt1);
int t=pst1.executeUpdate();
if(t>0){
%>
<body>
<center><b>NOTIFICATION CHART UPDATED AUTOMATICALLY</b>
<br><br><br><a href="notify.jsp"><b>BACK</b></a>
</center>
</body>
<%
}
else{
out.println("Error404 in Entry");
}
}catch(Exception e){ out.println(e);}
%>