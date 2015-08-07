 <%

HttpSession hs=request.getSession();
if(hs.getAttribute("e1")!=null)
{
String uname=hs.getAttribute("e1").toString();

session.setAttribute("c1",uname);
}
%>

<html>
<head>
            <link REL="StyleSheet" TYPE="text/css" HREF="exp.css">
  </head>
<body >
<script type="text/javascript">
<!--
var currentTime = new Date()
var month = currentTime.getMonth() + 1
var day = currentTime.getDate()
var year = currentTime.getFullYear()
document.write("Date: "+day+ "/" +month  + "/" + year)
//-->
</script>
<font face="Shivaji01"  size ="5"><%=session.getAttribute("c1")%> </font>
<a href="login.html" target ="_parent">  <h4 align="right" >   Logout</h4></a>
</body>
<html>