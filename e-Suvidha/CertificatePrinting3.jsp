<%@page import="java.sql.*"%>
<%
String tokanno=request.getParameter("text1");
String aname=request.getParameter("text2");
String affi=request.getParameter("text3");
String d=request.getParameter("day");
String m=request.getParameter("month");
String y=request.getParameter("year");

String aage=request.getParameter("age");
String occu=request.getParameter("occu");
String addr=request.getParameter("addr");
String vileg=request.getParameter("vileg");
String dist=request.getParameter("dist");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
PreparedStatement stmt=con.prepareStatement("insert into cerprinting values(?,?,?,?,?,?,?,?,?)");

stmt.setString(1,tokanno);
stmt.setString(2,aname);
stmt.setString(3,affi);
stmt.setString(4,d+"-"+m+"-"+y);
stmt.setString(5,aage);
stmt.setString(6,occu);
stmt.setString(7,addr);
stmt.setString(8,vileg);
stmt.setString(9,dist);

stmt.executeUpdate();
con.close();

out.println("New arjdar successfully registered");
%>


