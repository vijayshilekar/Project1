  <%@page import="java.sql.*"%>
 <%
String a1,a2,a3,a4,a5,a6,a7,a8;

HttpSession hs=request.getSession();
if(hs.getAttribute("caffno")!=null && hs.getAttribute("cname")!=null && hs.getAttribute("cage")!=null && hs.getAttribute("cadd")!=null && hs.getAttribute("cvileg")!=null && hs.getAttribute("ctalu")!=null && hs.getAttribute("cdist")!=null && hs.getAttribute("cfileurl")!=null)
{
a1=hs.getAttribute("caffno").toString();
a2=hs.getAttribute("cname").toString();
a3=hs.getAttribute("cage").toString();
a4=hs.getAttribute("cadd").toString();
a5=hs.getAttribute("cvileg").toString();
a6=hs.getAttribute("ctalu").toString();
a7=hs.getAttribute("cdist").toString();
a8=hs.getAttribute("cfileurl").toString();

session.setAttribute("caffno",a1);
session.setAttribute("cname",a2);
session.setAttribute("cage",a3);                                                  
session.setAttribute("cadd",a4);
session.setAttribute("cvileg",a5);
session.setAttribute("ctalu",a6);
session.setAttribute("cdist",a7);
session.setAttribute("cfileurl",a8);


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

<center>
               <font face="Shivaji01"  size ="10">    Saptp~   </font>

</center>
<%@ page import="java.sql.*" %>
<%
HttpSession hss=request.getSession();
if(hss.getAttribute("cfileurl")!=null)
{
String fileurl=hss.getAttribute("cfileurl").toString();


int file=fileurl.lastIndexOf("\\");
String dirname=fileurl.substring(0,file);
String filename=fileurl.substring(file+1);
String b3="UploadPhotos/"+filename;


out.println("<img src='"+b3+"' width=100 align= right></img><br><br><br>");
//}
out.println("</table>");
}
%>



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font face="Shivaji01"  size ="5">   ivaYaya :&nbsp;&nbsp;]%pnaacao p`maanap~ imaLNao baabat

      Sapqap~ k`maaMk: <strong><%=session.getAttribute("caffno")%> </strong>
       maI <strong> <%=session.getAttribute("cname")%> </strong> mau.  <strong><%=session.getAttribute("cvileg")%>  </strong> talauka <strong> <%=session.getAttribute("ctalu")%> </strong> thisala <strong>
<%=session.getAttribute("ctalu")%> </strong> ijalha  <strong>  <%=session.getAttribute("cdist")%> </strong> rajya maharaYT/ yaoqaIla rihvaasaI Asauna  yaavdaro d`Zpuva-k kqana krtao 
maaJyaa maaihtIp`maaNao AaiNa samajauitp`maanao  yaa Saptp~at idlaolaI maaihtI ih KrI va Acauk Aaho.<br>yaat kaoNatahI gaOr p`kar AaZLlyaasa puiZla kaya-vaahIsa maI jabaabadar raihla. </font><br>

<input id="printpagebutton" type="button" value="Print" onclick="printpage()"/>
</body>
</html>                          




