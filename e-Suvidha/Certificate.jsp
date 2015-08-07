 <%

String a1=request.getParameter("tokanno");
String a2=request.getParameter("aname");
String a3=request.getParameter("affid");
String a4=request.getParameter("adress");
String a5=request.getParameter("jaat");
String a6=request.getParameter("vilege");
String a7=request.getParameter("vileg");




session.setAttribute("e1",a1);
session.setAttribute("e2",a2);
session.setAttribute("e3",a3);
session.setAttribute("e4",a4);
session.setAttribute("e5",a5);
session.setAttribute("e6",a6);
session.setAttribute("e7",a7);



if(a5.equals("]tpnaacao p`maanap~"))
{
    %>
   <jsp:forward page="incomecirtificate.jsp"/>
   <%
}
else if(a5.equals("jaaitcao p`maanap~"))
{
    %>
   <jsp:forward page="castcertificate.jsp"/>
   <%
}
else if(a5.equals("rihvaasaI p`maanap~"))
{
    %>
   <jsp:forward page="domcirtificate.jsp"/>
   <%
}


%>