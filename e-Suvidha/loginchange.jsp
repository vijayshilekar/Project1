<%@ page import="java.sql.*" %>
<%

String a1=request.getParameter("t1");
String a2=request.getParameter("t2");
String a3=request.getParameter("t3");

HttpSession hs=request.getSession();
if(hs.getAttribute("e1")!=null)
{
String name=hs.getAttribute("e1").toString();

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
Statement stmt=con.createStatement();
String sql="update login set Password='"+a3+"' where username='"+name+"'";
stmt.executeUpdate(sql);

out.println("<html>");
out.println("<head>");
out.println("</head>");
out.println("<font face='Shivaji02'><h1> PaasavaD-  badlalaolaa Aaho</h1>  </font>");
out.println("</html>");
}


%>