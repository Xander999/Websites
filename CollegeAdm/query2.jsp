<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);
}
</style>
<%@include file="connect.jsp"%>
<%
String st=request.getParameter("addr");
String email=request.getParameter("qid");
String stid="";
int id=0;
try{
	PreparedStatement pst=c.prepareStatement("select max(QID) from Query;");
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	id=rs.getInt(1);
	id++;
	}
	catch(Exception e){out.println("fetch"+e);}
try{
	stid=String.valueOf(id);
	PreparedStatement pst1=c.prepareStatement("insert into Query(QID,EMAIL,QUERIES) values(?,?,?);");
	pst1.setString(1,stid);
	pst1.setString(2,email);
	pst1.setString(3,st);
int t=pst1.executeUpdate();
if(t>0){
%>
<body>
<center><b>QUERIES WILL BE ANSWERED SOON</b>
<br><br><br><a href="index.html"><b>BACK</b></a>
</center>
</body>
<%
}
else{
out.println("Error404 in Entry");
}
}catch(Exception e){ out.println(e);}
%>