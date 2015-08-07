<%@page import="java.sql.*"%>
<%
String fname=request.getParameter("text1");
String lname=request.getParameter("text2");
String uname=request.getParameter("text3");
String pwd=request.getParameter("text4");
String d=request.getParameter("day");
String m=request.getParameter("month");
String y=request.getParameter("year");
String actype=request.getParameter("text5");
String gender=request.getParameter("gender");

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");
PreparedStatement stmt=con.prepareStatement("insert into UserDetail values(?,?,?,?,?,?,?)");

stmt.setString(1,fname);
stmt.setString(2,lname);
stmt.setString(3,d+"-"+m+"-"+y);
stmt.setString(4,actype);
stmt.setString(5,gender);
stmt.setString(6,uname);
stmt.setString(7,pwd);

stmt.executeUpdate();
con.close();

out.println("<html>");
out.println("<head>");
out.println("</head>");
out.println("<font face='Shivaji02'><h1> naivana naaoMdnaI puNa-.</h1>  </font>");
out.println("</html>");
%>


