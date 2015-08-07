<%@ page import="java.sql.*" %>
<%
int p1,p2;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
Statement stmt=con.createStatement();


ResultSet rs=stmt.executeQuery("select max(tknno) from appfill");
if(rs.next())
{
p1=rs.getInt(1);
p2=p1+1;

session.setAttribute("tkno",p2);
}
else
{
p1=10;

session.setAttribute("tkno",p1);
}

%>





<html>
<head>

<title>e-Suvidha</title>
</head>
<body bgcolor="pink">
<center>

<font face="Shivaji02"><h1>Aja- daKlaa  p,kar </h1> </font>
<form action="ApplicationfillingJSP.jsp" name="formgo"><br>
<table>

<tr><td><font face="Shivaji01">Sapqap k``maaMk </font></td><td><input type="text"style="font-family:Shivaji01;font-size:20px"  name="affno" size=15></td>
<td><input type="submit" value="Go"></td></tr>
</table>
</form>
</body>
</html>

 <%
HttpSession hs=request.getSession();
if(hs.getAttribute("AName")!=null && hs.getAttribute("AAdd")!=null && hs.getAttribute("AVileg")!=null && hs.getAttribute("AFfn")!=null)
{
String affno=hs.getAttribute("AFfn").toString();
String aname=hs.getAttribute("AName").toString();
String aadd=hs.getAttribute("AAdd").toString();
String avileg=hs.getAttribute("AVileg").toString();


session.setAttribute("b1",aname);
session.setAttribute("b2",aadd);
session.setAttribute("b3",avileg);
session.setAttribute("b4",affno);
}
%>



<html>
<head>

<script language="Javascript">

function f1()
{
	var si1=form.tkno.value;
	var si2=form.yrs.value;
	var si3=form.adhikari.value;
	var si4=form.adate.value;
	var si5=form.ocupa.value;
	var si6=form.ocupaa.value;
	var si7=form.dist.value;
	var si8=form.taluka.value;
	


	var f=0;
	if(!si1)
	{
		alert("Enter Tokan no");
		document.form.tkno.value="";
		document.form.tkno.focus();
		return false;
	}
	else if(!si2)
	{
		alert("Enter Year");
		document.form.yrs.value="";
		document.form.yrs.focus();
		return false;
	}
	else if(si2>=2015)
	{
		alert("Enter valid Year");
		document.form.yrs.value="";
		document.form.yrs.focus();
		return false;
	}
	else if(!si3)
	{
		alert("Enter Adhikari");
		document.form.adhikari.value="";
		document.form.adhikari.focus();
		return false;
	}
	else if(!si4)
	{
		alert("Enter Date");
		document.form.adate.value="";
		document.form.adate.focus();
		return false;
	}		
	else if(!si5)
	{
		alert("Enter Date");
		document.form.ocupa.value="";
		document.form.ocupa.focus();
		return false;
	}
	else if(!si6)
	{
		alert("Enter caste");
		document.form.ocupaa.value="";
		document.form.ocupaa.focus();
		return false;
	}
	else if(!si7)
	{
		alert("Enter District");
		document.form.dist.value="";
		document.form.dist.focus();
		return false;
	}
	else if(!si8)
	{
		alert("Enter Taluka");
		document.form.taluka.value="";
		document.form.taluka.focus();
		return false;
	}
	else
	{
		document.form.submit();
	}
	
}

function LettersWithSpaceOnly (evt) 
{
    evt = (evt) ? evt : event;
    var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
    ((evt.which) ? evt.which : 0));
    if (charCode > 32 && (charCode < 65 || charCode > 90) &&
        (charCode < 97 || charCode > 122)) {
            return false;
        }
return true;
}
function isNumberKey(evt)
{
var charCode = (evt.which) ? evt.which : event.keyCode;
if(charCode > 31 && (charCode < 48 || charCode > 57))
return false;
return true;
}



function addDate()
{
date = new Date();
var month = date.getMonth()+1;
var day = date.getDate();
var year = date.getFullYear();


if (document.getElementById('datetext').value == ''){
document.getElementById('datetext').value = day + '-' + month + '-' + year;
}
}



</script>
</head>
<body onload="addDate();">
<form name="form" action="appfill.jsp">
<table>

<tr><td>
<font face="Shivaji01">Taokna naMbar</font>
 </td><td>
<input type="text" style="font-family:Shivaji01;font-size:20px" name="tkno" size=15 value="<%=session.getAttribute("tkno")%>" readonly>
</td></tr>

<tr><td>
<font face="Shivaji01">Aja- daKlaa  p,kar</font>
</td><td>

<input type="text" name="dtype" style="font-family:Shivaji01;font-size:20px" value="jaaitcao p`maanap~" readonly>

</td></tr>
<tr><td>
<font face="Shivaji01">vaYa-</font>
 </td><td>
<input type="text" style="font-family:Shivaji01;font-size:20px" name="yrs" size=15 onkeypress="return isNumberKey(event)">
</td></tr>

<tr><td>
<font face="Shivaji01">inaNa-ya AaiqakarI </font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px"  name="adhikari" size=15 onkeypress="return LettersWithSpaceOnly()">
</td></tr>

<tr><td>
<font face="Shivaji01">Sapqap k``maaMk </font>
</td><td>
<input type="text" style="font-family:Shivaji01;font-size:20px" name="affn" size=20 value="<%=session.getAttribute("b4")%>" readonly>
</td></tr>

<tr><td>
<font face="Shivaji01">Aja-daracao naava  </font>
</td><td> 
<input type="text" style="font-family:Shivaji01;font-size:20px" name="Appliname" size=20 value="<%=session.getAttribute("b1")%>" readonly>
</td></tr>
<tr><td>
<font face="Shivaji01">pta</font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="addr" size="20" value="<%=session.getAttribute("b2")%>" readonly>
</td></tr>
<tr><td>
<font face="Shivaji01">gaava </font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px"  name="vileg" size=15 value="<%=session.getAttribute("b3")%>" readonly>
</td></tr>
<tr><td>
<font face="Shivaji01">Aja- daKlaa idnaaMk </font>
</td><td>
<input type="text" name="adate" size="15" id="datetext" readonly>
</td></tr>
<tr><td>
<font face="Shivaji01">daKlaa AaputI- idnaaMk </font></td><td><input type="text" name="ocupa" size=15 >
</td></tr>
<tr><td>
<font face="Shivaji01">jaat</font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="ocupaa" size=15 onkeypress="return LettersWithSpaceOnly()">
</td></tr>
<tr><td> 
<font face="Shivaji01">ijalha </font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="dist" size=15 onkeypress="return LettersWithSpaceOnly()">
</td></tr>
<tr><td>
<font face="Shivaji01">talaUka</font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="taluka" size=15 onkeypress="return LettersWithSpaceOnly()">
</td></tr>
<table>
<input type="submit" value="Submit" onclick="return f1()" >
</center>
</form>
</body>
</html>