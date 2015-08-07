 <%

HttpSession hs=request.getSession();
if(hs.getAttribute("e1")!=null && hs.getAttribute("e2")!=null && hs.getAttribute("e3")!=null && hs.getAttribute("e4")!=null && hs.getAttribute("e5")!=null && hs.getAttribute("e6")!=null&& hs.getAttribute("e7")!=null &&hs.getAttribute("e8")!=null )
{
String affno=hs.getAttribute("e1").toString();
String aname=hs.getAttribute("e2").toString();
String anav=hs.getAttribute("e3").toString();
String avileg=hs.getAttribute("e4").toString();
String DISR =hs.getAttribute("e5").toString();
String avyavsay=hs.getAttribute("e6").toString();
String jaat=hs.getAttribute("e7").toString();
String TALUKA=hs.getAttribute("e8").toString();
String jat=hs.getAttribute("e9").toString();




session.setAttribute("c1",affno);
session.setAttribute("c2",aname);
session.setAttribute("c3",anav);
session.setAttribute("c4",avileg);
session.setAttribute("c5",DISR);
session.setAttribute("c6",avyavsay);
session.setAttribute("c7",TALUKA);
session.setAttribute("c8",jaat);
session.setAttribute("c9",jat);


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
                                <h3 align="right">  <font face="Shivaji01"  size ="5">ivaBaagaIya kaya-laya <%=session.getAttribute("c8")%> </font></h3>
                                    
            <center><h2><font face="Shivaji01"  size ="5"> jaatIcao p`maaNap~<font></h2></center> 
   
 <font face="Shivaji01"  size ="5">   <br>         KalaIla idlaolyaa puravyaa AaQaaro p`maaiNak krNyaat yaoto kI
 EaI ikMvaa EaImatI ikMvaa kumaarI </font><strong>  <%=session.getAttribute("c2")%> </strong><font face="Shivaji01"  size ="5"> rahNaar <strong> <%=session.getAttribute("c4")%> </strong>talauka <strong><%=session.getAttribute("c7")%></strong> ivaBaaga    <strong> <%=session.getAttribute("c8")%> </strong>ijallaa <strong><%=session.getAttribute("c8")%> </strong>rajya maharaYT/ ho maharaYT/ rajya jaat pDtaLNaI nausaar jaat <strong><%=session.getAttribute("c9")%> </strong> jaatIcao Aahot.
           EaI ikMvaa EaImatI ikMvaa kumaarI <strong><%=session.getAttribute("c2")%></strong>
AaiNa ,%yaaMcao ikMvaa %yaaMcaI gaava <strong><%=session.getAttribute("c4")%> </strong>talauka <strong><%=session.getAttribute("c7")%></strong>
ijallaa <%=session.getAttribute("c8")%> rajya maharaYT/.<br>

<br>
jaaoDlaolao kagadp~o: <br>
1. Saptp~o <br>
2. SaaLa saaoDlyaacaa daKlaa <br> 
3. naatovaa[-kacao jaaitcao p`maaNap~ <br>




<br><br>
izkaNa: <strong> <%=session.getAttribute("c6")%>  </strong>
<br>                                      
idnaaMk: 
                    
</font>
                          <h3 align="right">    <font face="Shivaji01"  size ="5">  ivaBaagaIya AaiQakarI <%=session.getAttribute("c8")%> </font></h3>

<br><br><br><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input id="printpagebutton" type="button" value="Print" onclick="printpage()"/>
</body>
</html>
