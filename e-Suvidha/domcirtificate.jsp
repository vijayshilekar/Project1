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
<font face=shivaji01 size=5>
<h4 align="right"><strong> thsaIla kayaa-laya <strong><%=session.getAttribute("c9")%> </strong> <br>
idnaaMk :</font></strong>&nbsp;&nbsp;&nbsp;  / &nbsp;&nbsp;&nbsp;    /     </h4>
<font face=shivaji01 size=5>
<center><strong>rihvaasaI p`maaNap~</strong></center><br>
<br>
p`maaNaIt krNyaat yaoto kI EaI <strong><%=session.getAttribute("c2")%> </strong>
ra.<strong><%=session.getAttribute("c4")%> </strong> ta.<strong><%=session.getAttribute("c9")%> </strong>ija.<strong><%=session.getAttribute("c7")%> </strong> yaoqaIla rihvaasaI
Aahot.<br>
sababa ho p`maaNap~ doNyaat yaot Aaho.<br><br>
puravaa:<br>
ivaiht namaunyaacaa Aja-<br>
1.tlaazI ikvaa ga`amapMcaayat Pa`maaNap~<br>
2.SaaLa saaoDlyaacaoPa`maaNap~<br>
3.iSaQaa pi~ka<br>
4.p`it&ap~<br>
5.matdana AaoLKp~<br>
6.[tr puravao<br>
<br>
sqaL : <strong><%=session.getAttribute("c9")%> </strong><br>

idnaaMk :</font> &nbsp;&nbsp;&nbsp;    /  &nbsp;&nbsp;&nbsp;     /


<font face=shivaji01 size=5><h4 align="right"><strong>thsaIladar  : <%=session.getAttribute("c9")%> </strong></h4>
</font>
<input id="printpagebutton" type="button" value="Print " onclick="printpage()"/>



</body>

</html>
