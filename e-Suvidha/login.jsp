 <%@ page import="java.sql.*" %>
<%
//String s;
String a1=request.getParameter("text");
String a2=request.getParameter("password");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from login where username='"+a1+"' and password='"+a2+"'");
if(rs.next())
{
String s=rs.getString(1); //tknno

session.setAttribute("e1",s);


//session.setAttribute("UserName",rs.getString("FullName"));
//session.setAttribute("Contact",rs.getString("Contact"));
//String s=rs.getString(1);
//String s1=rs.getString(2);
//session.setAttribute("un",s);
//session.setAttribute("pw",s1);


%>
   <jsp:forward page="Homepage.html"/>
   <%
}
else
{
%>
   <jsp:forward page="login1.html"/>
   <%
}
%>