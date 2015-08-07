 <html>
<head>
<title>e-Suvidha</title>
<style>
body
{
background-image:url('setu1.png');

}

</style>
<body bgcolor="pink">
<form name="name" action="CertificatePrinting2.jsp" method="post" onSubmit="return validate()">
<center>
<br>
<br>
<br>
<table>

<tr>
<td><font face="Shivaji01"><strong>Taokna naMbar</strong> </font></td>
<td><input type="text" style="font-family:Shivaji01;font-size:20px"  name="t1" size="15"></td>
<td><input type="submit" value="Go" name="b1"> </td>
</tr>
</table>
</form>
</body>
</html>

<%@ page import="java.sql.*" %>
 <%

String a1=request.getParameter("t1");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from appfill where tknno="+a1);
if(rs.next())
{
String a2=rs.getString(1); //tknno
String a21=rs.getString(3); //tknno
String a3=rs.getString(5); // sptno
String a4=rs.getString(6); // name
String a5=rs.getString(7); // add
String a6=rs.getString(8); // villeg
String a7=rs.getString(12);//disr

String a8=rs.getString(2); 
String a10=rs.getString(11); 
String a9=rs.getString(13); 
String a11=rs.getString(14);
String a12=rs.getString(15);



session.setAttribute("e1",a2);
session.setAttribute("e11",a21);
session.setAttribute("e2",a3);
session.setAttribute("e3",a4);
session.setAttribute("e4",a5);
session.setAttribute("e5",a6);
session.setAttribute("e6",a7);
session.setAttribute("e7",a8);
session.setAttribute("e8",a9);
session.setAttribute("e9",a10);
session.setAttribute("e10",a11);
session.setAttribute("e12",a12);

}
%>


<html>
<body>
<form name="name" action="Certificate.jsp" method="post" onSubmit="return validate()">
<table>
<tr><td><font face="Shivaji01"><strong>Taokna naMbar</strong> </font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="tokanno" size=15 value="<%=session.getAttribute("e1")%>" readonly></td></tr>

<tr><td><font face="Shivaji01"><strong>Aja-daracao naava </strong> </font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="aname" size=15 value="<%=session.getAttribute("e3")%>" readonly></td></tr>

<tr><td><font face="Shivaji01"><strong> Saptp~</strong> </font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="affid" size=15 value="<%=session.getAttribute("e2")%>" readonly></td></tr>

<tr><td><font face="Shivaji01"><strong>pta</strong></font> </td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="adress" size=15 value="<%=session.getAttribute("e4")%>" readonly></td></tr>


<tr><td><font face="Shivaji01"><strong>p`maanap~</strong></font> </td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="jaat" size=15 value="<%=session.getAttribute("e7")%>" readonly></td></tr>


<tr><td><font face="Shivaji01"><strong>gaava</strong></font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="vilege" size=15 value="<%=session.getAttribute("e5")%>" readonly></td></tr>



<tr><td><font face="Shivaji01"><strong>ijalha</strong> </font></td><td><input type="text" style="font-family:Shivaji01;font-size:20px" name="vileg" size=15 value="<%=session.getAttribute("e6")%>" readonly>
</td></tr>

<br><br>
<h>---------------------------------------------------------------------------------------------------------</h>
<tr><td></td><td><input type="submit" value="submit" name="b2"> 
<input type="reset" value="Reset"></td></tr>
</table>


<br><br><h>---------------------------------------------------------------------------------------------------------</h>

</center>
</form>


<script> 
	
    function validate()
{
if(document.certificateP.tokanno.value=="")
{
  alert("Please Enter Tokan Number");
  return false;
}
if(document.certificateP.aname.value=="")
{
  alert("Please Enter your name");
  return false;
}
if(document.certificateP.affid.value=="")
{
   alert("Please Enter your affidavit");
   return false;
}
if(document.certificateP.age.value=="")
{
    alert("Please Enter your Age");
    return false;
}

if(document.certificateP.occupation.value=="")
{
    alert("Please Enter your occupation" );
    return false;
}
if(document.certificateP.adress.value=="")
{
    alert("Please Enter your address");
    return false;
}

if(document.certificateP.vilege.value=="")
{
    alert("Please Enter your villege name");
    return false;
}
}
</script>
</body>
</html> 