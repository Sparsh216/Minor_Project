<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%

String studentname=request.getParameter("sname");
String course=request.getParameter("course");
String batch=request.getParameter("batch");
String address=request.getParameter("address");
String phone=request.getParameter("phone");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/acorn","root","1234");
pst = con.prepareStatement("insert into student(studname,course,batch,address,phone)values(?,?,?,?,?)");
pst.setString(1,studentname);
pst.setString(2,course);
pst.setString(3,batch);
pst.setString(4,address);
pst.setString(5,phone);
pst.executeUpdate();
out.println("Record Addeddd");
%>