 <%@page import="java.sql.*"%>
<%
String TKNNO=request.getParameter("tkno");
String ARJDKPRKAR=request.getParameter("dtype");
String YR=request.getParameter("yrs");
String NIRNADIKARI=request.getParameter("adhikari");                                                                                         
String SPTNO=request.getParameter("affn");
String ANAME =request.getParameter("Appliname");
String ADDRESS=request.getParameter("addr");
String VILEG=request.getParameter("vileg"); 
String ARJDKDATE=request.getParameter("adate");
String RECPDATE=request.getParameter("ocupa");
String VYAVSAY=request.getParameter("ocupaa");
String DISR=request.getParameter("dist");
String TALUKA=request.getParameter("taluka");



Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","system","manager");


PreparedStatement stmt=con.prepareStatement("insert into incomapfil values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

stmt.setString(1,TKNNO);
stmt.setString(2,ARJDKPRKAR);
stmt.setString(3,YR);
stmt.setString(4,NIRNADIKARI);
stmt.setString(5,SPTNO);
stmt.setString(6,ANAME);
stmt.setString(7,ADDRESS);
stmt.setString(8,VILEG);
stmt.setString(9,ARJDKDATE);
stmt.setString(10,RECPDATE);
stmt.setString(11,VYAVSAY);
stmt.setString(12,DISR);
stmt.setString(13,TALUKA);

stmt.executeUpdate();
con.close();



session.setAttribute("TKNNO",TKNNO);
session.setAttribute("ARJDKPRKAR",ARJDKPRKAR);
session.setAttribute("YR",YR);
session.setAttribute("NIRNADIKARI",NIRNADIKARI);
session.setAttribute("SPTNO",SPTNO);
session.setAttribute("ANAME",ANAME);
session.setAttribute("ADDRESS",ADDRESS);
session.setAttribute("VILEG",VILEG);
session.setAttribute("ARJDKDATE",ARJDKDATE);
session.setAttribute("RECPDATE",RECPDATE);
session.setAttribute("VYAVSAY",VYAVSAY);
session.setAttribute("DISR",DISR);
session.setAttribute("TALUKA",TALUKA);

%>
   <jsp:forward page="ackreciept.jsp"/>
   <%



%>