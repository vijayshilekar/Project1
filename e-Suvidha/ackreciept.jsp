 <%@page import="java.sql.*"%>
<%
String a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13;


HttpSession hs=request.getSession();
if(hs.getAttribute("TKNNO")!=null && hs.getAttribute("ARJDKPRKAR")!=null && hs.getAttribute("YR")!=null && hs.getAttribute("NIRNADIKARI")!=null && hs.getAttribute("SPTNO")!=null && hs.getAttribute("ANAME")!=null && hs.getAttribute("ADDRESS")!=null && hs.getAttribute("VILEG")!=null && hs.getAttribute("ARJDKDATE")!=null && hs.getAttribute("RECPDATE")!=null && hs.getAttribute("VYAVSAY")!=null && hs.getAttribute("DISR")!=null && hs.getAttribute("TALUKA")!=null)
{
a1=hs.getAttribute("TKNNO").toString();
a2=hs.getAttribute("ARJDKPRKAR").toString();
a3=hs.getAttribute("YR").toString();
a4=hs.getAttribute("NIRNADIKARI").toString();
a5=hs.getAttribute("SPTNO").toString();
a6=hs.getAttribute("ANAME").toString();
a7=hs.getAttribute("ADDRESS").toString();
a8=hs.getAttribute("VILEG").toString();
a9=hs.getAttribute("ARJDKDATE").toString();
a10=hs.getAttribute("RECPDATE").toString();
a11=hs.getAttribute("VYAVSAY").toString();
a12=hs.getAttribute("DISR").toString();
a13=hs.getAttribute("TALUKA").toString();

session.setAttribute("TKNNO",a1);
session.setAttribute("ARJDKPRKAR",a2);
session.setAttribute("YR",a3);
session.setAttribute("NIRNADIKARI",a4);                                                  
session.setAttribute("SPTNO",a5);
session.setAttribute("ANAME",a6);
session.setAttribute("ADDRESS",a7);
session.setAttribute("VILEG",a8);
session.setAttribute("ARJDKDATE",a9);
session.setAttribute("RECPDATE",a10);                                                  
session.setAttribute("VYAVSAY",a11);
session.setAttribute("DISR",a12);
session.setAttribute("TALUKA",a13);
}

%>




<html>
<head>
<script type="text/javascript">
    function printpage() {
        //Get the print button and put it into a variable
        var printButton = document.getElementById("printpagebutton");
        //Set the print button visibility to 'hidden' 
        printButton.style.visibility = 'hidden';
        //Print the page content
        window.print()
        //Set the print button to 'visible' again 
        //[Delete this line if you want it to stay hidden after printing]
        printButton.style.visibility = 'visible';
    }
</script>





</head>
<body>
<table border="1" width="50%">
<tr >
<th colspan="2"><font face="shivaji01" font size=5>maaihtI va sauivaQaa kod` naaMdoD</font></th>
</tr>
<tr>
<th colspan="2"><font face="shivaji01" font size=5>paoca pavatI</font></th>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>Taokna naMbar</font></td>
<td><font face="shivaji01" font size=5> <%=session.getAttribute("TKNNO")%></font>  </td>
</tr>
 <tr>
<td><font face="shivaji01"  font size=5>Aja-daracao naava </font></td>
<td><font face="shivaji01" font size=5> <%=session.getAttribute("ANAME")%></font>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>pta</font></td>
<td><font face="shivaji01" font size=5> <%=session.getAttribute("ADDRESS")%></font>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>ijalha</font></td>
<td><font face="shivaji01" font size=5> <%=session.getAttribute("DISR")%></font>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>Aja- daKlaa idnaaMk</font></td>
<td><%=session.getAttribute("ARJDKDATE")%> </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>daKlaa AaputI- idnaaMk</font></td>
<td> <%=session.getAttribute("RECPDATE")%>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>laagaNaara AvaQaI</font></td>
<td><font face="shivaji01" font size=5> 10 idvasa </font>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>Sapqap~ k`maaMk</font></td>
<td><font face="shivaji01" font size=5> <%=session.getAttribute("SPTNO")%></font>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>inaNa-ya AiQakarI</font></td>
<td><font face="shivaji01" font size=5> <%=session.getAttribute("NIRNADIKARI")%></font>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>Aja- p`k`Iyaa Saulk</font></td>
<td><font face="shivaji01" font size=5> 22 ru</font>  </td>
</tr>
<tr>
<td><font face="shivaji01"  font size=5>sahI</font></td>
<td><font face="shivaji01" font size=5> </font>  </td>
</tr>
<tr >
<th colspan="2"><font face="shivaji01" font size=5>sava- jaaoDpcaI put-ta JaalaI Aaho</font></th>
</tr>
</table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
<input id="printpagebutton" type="button" value="Print " onclick="printpage()"/>
</body>
</html>