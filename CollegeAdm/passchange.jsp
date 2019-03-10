<head>
<script language="javascript">
function check(){
var pwd=document.getElementById("p1");
var pwd1=document.getElementById("p2");
var pwd2=document.getElementById("p3");
if(!pwd1.equals(pwd2)){
alert("REENTER PASSWORD");
document.getElementById("p3").focus();
document.getElementById("p3").value="";
return false;
}
}
</script>
</head>
<style>
body{
background: linear-gradient(-180deg, #ffffff  ,#5D605D);}
#div1{
	float:center;
	margin-top:25px;
	margin-left:5px;
	height:180px;
	width:465px;
	background:linear-gradient(-90deg, #B891F2  ,#F5680A);
	border:groove;
	color:white;
}
#div2{
	float:center;
	margin-top:40px;
	margin-left:40px;
	height:240px;
	width:570px;
	background:linear-gradient(-90deg, #F5680A ,#1B1A1C);
	border:groove;
	color:white;
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
<h2>CHANGE ADMINISTRATOR PASSWORD</h2>
<br><br>
<%@include file="connect.jsp"%>
<center>
<form action="chang.jsp" onsubmit="return check()" method=post>
<div id=div2>
<div id=div1>
<table>
<tr>
<td><b>ENTER PREV PASSWORD :</b></td><td><input type=text size=20 name=pass1 id="p1"><br></td>
</tr>
<tr>
<td><b>ENTER NEW PASSWORD:</b></td><td><input type=text size=20 name=pass21 id="p2"><br></td>
</tr>
<tr>
<td><b>REENTER NEW PASSWORD :</b></td><td><input type=text size=20 name=pass22 id="p3"><br></td>
</tr>
</table>
<br><br>
<button class="sign">CHANGE</button>
</form>
</center>
</div>
</div>           