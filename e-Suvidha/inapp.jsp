<%@ page import="java.sql.*" %>
<%
String a1=request.getParameter("affno");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
Statement stmt=con.createStatement();

ResultSet rs=stmt.executeQuery("select * from affidavit where affn="+a1);
if(rs.next())
{
session.setAttribute("AFfn",rs.getInt(2));
session.setAttribute("AName",rs.getString(3));
session.setAttribute("AAdd",rs.getString(6));
session.setAttribute("AVileg",rs.getString(7));
}


%>
   <jsp:forward page="incomeappfil.jsp"/>
   <%

%>