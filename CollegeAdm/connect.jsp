<%@page import="java.sql.*"%>
<%!
	Connection c=null;
%>
<%
try{
 String database="C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\CollegeAdm\\CollegeDatabase.accdb";
  String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb ,*.accdb)};DBQ="+database+";";  

   Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");  
   c=DriverManager.getConnection("jdbc:ucanaccess://"+database);  
     
  
}catch(Exception e){
out.println(e);}  
%>