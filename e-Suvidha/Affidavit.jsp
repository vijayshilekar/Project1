 <%@page import="java.sql.*"%>
<%
String aptyp=request.getParameter("Apptyp");
String affno=request.getParameter("AffNo");
String aname=request.getParameter("Appliname");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String address=request.getParameter("addr");
String vileg=request.getParameter("vileg");

String Talu=request.getParameter("talu");
String Dist=request.getParameter("dist");
String fileurl=request.getParameter("photourl");
String a1=request.getParameter("dtype");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
PreparedStatement stmt=con.prepareStatement("insert into Affidavit values(?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,aptyp);
stmt.setString(2,affno);
stmt.setString(3,aname);
stmt.setString(4,age);
stmt.setString(5,gender);
stmt.setString(6,address);
stmt.setString(7,vileg);
stmt.setString(8,Talu);
stmt.setString(9,Dist);
stmt.setString(10,fileurl);
stmt.executeUpdate();
con.close();


session.setAttribute("caffno",affno);
session.setAttribute("cname",aname);
session.setAttribute("cage",age);
session.setAttribute("cadd",address);
session.setAttribute("cvileg",vileg);
session.setAttribute("ctalu",Talu);
session.setAttribute("cdist",Dist);
session.setAttribute("cfileurl",fileurl);

if(a1.equals("]tpnaacao p`maanap~"))
{
%>
   <jsp:forward page="incomAff.jsp"/>
   <%

}
else if(a1.equals("jaaitcao p`maanap~"))     	
{
  %>
   <jsp:forward page="Affidavit_Print.jsp"/>
   <%
}
else if(a1.equals("rihvaasaI p`maanap~"))     	
{
  %>
   <jsp:forward page="DomNat.jsp"/>
   <%
}
else if(a1.equals("rihvaasaI p`maanap~"))     	
{
  %>
   <jsp:forward page="DomNat.jsp"/>
   <%
}


//out.println("<html>");
//out.println("<head>");
//out.println("</head>");
//out.println("<font face='Shivaji02'><h1> naivana naaoMdnaI puNa-.</h1>  </font>");
//out.println("</html>");
%>


c