 
 <%

HttpSession hs=request.getSession();
if(hs.getAttribute("e1")!=null && hs.getAttribute("e2")!=null && hs.getAttribute("e3")!=null && hs.getAttribute("e4")!=null && hs.getAttribute("e5")!=null && hs.getAttribute("e6")!=null&& hs.getAttribute("e7")!=null && hs.getAttribute("e11")!=null && hs.getAttribute("e8")!=null && hs.getAttribute("e10")!=null && hs.getAttribute("e12")!=null)
{
String affno=hs.getAttribute("e1").toString();
String aname=hs.getAttribute("e2").toString();
String anav=hs.getAttribute("e3").toString();
String avileg=hs.getAttribute("e4").toString();
String DISR =hs.getAttribute("e5").toString();
String avyavsay=hs.getAttribute("e6").toString();
String jaat=hs.getAttribute("e7").toString();
String year=hs.getAttribute("e11").toString();
String taluka=hs.getAttribute("e8").toString();
String income=hs.getAttribute("e10").toString();
String occup=hs.getAttribute("e12").toString();



session.setAttribute("c1",affno);
session.setAttribute("c2",aname);
session.setAttribute("c3",anav);
session.setAttribute("c4",avileg);
session.setAttribute("c5",DISR);
session.setAttribute("c6",avyavsay);
session.setAttribute("c7",jaat);
session.setAttribute("c9",taluka);
session.setAttribute("c8",year);
session.setAttribute("c10",income);
session.setAttribute("c11",occup);
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
<table>
<tr><td>
<font face="shivaji01" size="5"; align="right">id </font> &nbsp;&nbsp;&nbsp;/ &nbsp;&nbsp;&nbsp;   /   </td></tr><br><br>
<tr><td><font face="shivaji01" size="5"><center><strong>]%pnnaacao p`maaNap~</strong></center></font></td></tr><br>
<tr><td>
<font face="shivaji01" size="5">
<p>KalaIla daKla kolaolyaa puravyaa AaQaaro p`maaiNat krNyaat yaoto kI <strong><%=session.getAttribute("c2")%> </strong><br>
rahNaar <strong> <%=session.getAttribute("c4")%> </strong>talauka <strong > <%=session.getAttribute("c9")%> </strong> ijalha  <strong><%=session.getAttribute("c7")%> </strong> yaaMcao sana   <strong><%=session.getAttribute("c8")%> </strong> cao vaaYaI-k ]tpnna rpyao<strong> <%=session.getAttribute("c10")%> </strong> Aaho.<br> sadr ]tpna <strong > <%=session.getAttribute("c11")%> </strong> maagaa-nao Aaho sadrcaI maaihtI KaoTI AaZLUna Aalyaasa sadrcaa daKlaa rd krNyaat yao[-la.<br>
p`stut daKlaa Aja-daracao ivanaMtI Ajaa-varna maulaacyaa iSaxaNaasaazI yaa kamaI doNyaat yaot Aaho
</p></font> 
</td></tr>
<tr><td>
<font face="shivaji01" size="5">
saadr kolaolao puravao<br>
1.Sapqa p~ <br>
2.raSaona kaD-
</td></tr>
<tr><td>

<font face="shivaji01" size="5"; align="right">thsaIladar</td></tr>
</table>
<input id="printpagebutton" type="button" value="Print" onclick="printpage()"/>
</body>
</html>