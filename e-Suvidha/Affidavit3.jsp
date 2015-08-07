<%@ page import="java.sql.*" %>
<%
int p1,p2;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
Statement stmt=con.createStatement();


ResultSet rs=stmt.executeQuery("select max(Affn) from Affidavit");
if(rs.next())
{
p1=rs.getInt(1);
p2=p1+1;

session.setAttribute("srno",p2);
}
else
{
p1=10;

session.setAttribute("srno",p1);
}
%>





<%@ page import="java.sql.*" %>
<%
String a1;

HttpSession hs=request.getSession();
if(hs.getAttribute("FileURL")!=null)
{
a1=hs.getAttribute("FileURL").toString();

session.setAttribute("FURL",a1);
}
%>


<html>
<head>
<title>e-Suvidha</title>
<script language="Javascript">
<!--
function f2()
{
	var si1=upform.t5.value;

	var f=0;

	if(!si1)
	{
		alert("Select Photo");
		document.upform.t5.value="";
		document.upform.t5.focus();
		return false;
	}
	else
	{
		document.upform.submit();
	}
}
-->
</script>

</head>


<style>
body
{
background-image:url('setu1.png');

}
</style>

<form name="upform" method="post" action="UploadFile.jsp"  enctype="multipart/form-data"  >
<br>
<br>
<br><table border="0" width="40%" align="center"> 
<tr>
<td><font face="Shivaji01"><strong>Cayaaica~ inavaDa</strong></font></td>
<td>:</td>
<td><input type="file" name="t5"></td>
</tr>
<tr>
<td colspan="3" align="center"><br><input type="submit" name="b1" value="SUBMIT" onClick="return f2()" ></td>
</tr>
</table>
</form>
</body>
</html>

<html>
<head>
<title>e-Suvidha</title>
<script language="Javascript">
<!--
function f1()
{
	var si1=form.AffNo.value;
	var si2=form.Appliname.value;
	var si3=form.age.value;
	var si4=form.addr.value;
	var si5=form.vileg.value;
	var si6=form.talu.value;
	var si7=form.dist.value;

	var f=0;
	if(!si2)
	{
		alert("Enter Application Name");
		document.form.Appliname.value="";
		document.form.Appliname.focus();
		return false;
	}
	else if(!si3)
	{
		alert("Enter Age");
		document.form.age.value="";
		document.form.age.focus();
		return false;
	}
	else if(!si4)
	{
		alert("Enter Address");
		document.form.addr.value="";
		document.form.addr.focus();
		return false;
	}		
	else if(!si5)
	{
		alert("Enter Village");
		document.form.vileg.value="";
		document.form.vileg.focus();
		return false;
	}
	else if(!si6)
	{
		alert("Enter Taluka");
		document.form.talu.value="";
		document.form.talu.focus();
		return false;
	}
	else if(!si7)
	{
		alert("Enter District");
		document.form.dist.value="";
		document.form.dist.focus();
		return false;
	}
              else if(si3>100)
	{
		alert("Enter Valid age");
		document.form.age.value="";
		document.form.age.focus();
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

function isCharKey(evt)
{
var charCode = (evt.which) ? evt.which : event.keyCode;
if(charCode > 31 && (charCode < 65 || charCode > 90))
return false;
return true;
}

function ValidateNumberOnly()
{
if ((event.keyCode < 48 || event.keyCode > 57)) 
{
       event.returnValue = true;
}
}


-->
</script>

</head>

<body bgcolor="pink" >

<form name="form" action="Affidavit.jsp" method="post" >
<center>
<h>---------------------------------------------------------------------------------------------------------</h>

<table>
<tr><td>
<font face="Shivaji01"><strong>Aja-caa p`kar</strong></font></td> <td><select  name="dtype" style="font-family:Shivaji01;font-size:20px" >
 <option value="jaaitcao p`maanap~">jaaitcao p`maanap~</option>
<option value="]tpnaacao p`maanap~">]%pnaacao p`maanap~</option>
<option value="rihvaasaI p`maanap~">rihvaasaI p`maanap~</option>
<option value="raYTIyatva p`maanap~">raYTIyatva p`maanap~</option>

</select></td></tr>
<tr><td><font face="Shivaji01"><strong>Saptp~ k`maaMk</strong></font></td> 
<td><input type="text" style="font-family:Shivaji01;font-size:20px" name="AffNo" size=20 value="<%=session.getAttribute("srno")%>" readonly></td></tr>


<tr><td><font face="Shivaji01"><strong>Aja-daracao naava </strong> </font></td> 
<td><input type="text" style="font-family:Shivaji01;font-size:20px" name="Appliname" size=20 onkeypress="return LettersWithSpaceOnly()"></td></tr>

<tr><td><font face="Shivaji01"><strong>vaya </strong> </font></td><td> <input type="text" style="font-family:Shivaji01;font-size:20px"  name="age" size=4 onkeypress="return isNumberKey(event)"></td></tr><br>

<tr><td><font face="Shivaji01"><strong>ilaMga</strong></font></td><td><select  name="gender" style="font-family:Shivaji01;font-size:20px" > <option>purUYa<option>s~I</select></td></tr>

<tr><td><font face="Shivaji01"><strong>pta</strong></font></td><td><input type="text"style="font-family:Shivaji01;font-size:20px" name="addr" size=20 onkeypress="return LettersWithSpaceOnly()"></td></tr>

<tr><td><font face="Shivaji01"><strong>gaava</strong></font></td><td> <input type="text"style="font-family:Shivaji01;font-size:20px" name="vileg" size=15 onkeypress="return LettersWithSpaceOnly()"></td></tr>

<tr><td><font face="Shivaji01"><strong>talauka</strong></font></td><td> <input type="text"style="font-family:Shivaji01;font-size:20px" name="talu" size=15 onkeypress="return LettersWithSpaceOnly()"></td></tr>

<tr><td><font face="Shivaji01"><strong>ijalha</strong></font></td><td> <input type="text"style="font-family:Shivaji01;font-size:20px" name="dist" size=15 onkeypress="return LettersWithSpaceOnly()"></td></tr>

<tr><td><font face="Shivaji01"><strong>Cayaaica~</strong></font></td><td> <input type="text" name="photourl" value="<%=session.getAttribute("FURL")%>"> </td></tr>

<tr><td></td><td><input  type="submit"  value="submit" size=5 onclick="return f1()">

<input  type="reset" value="cancel" size=5></td></tr>
</table>
<h>---------------------------------------------------------------------------------------------------------</h>
</center>
</form>

</body>
</html>