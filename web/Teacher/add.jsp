<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%

String teachername=request.getParameter("tname");
String course=request.getParameter("course");
String address=request.getParameter("address");
String phone=request.getParameter("phone");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/acorn","root","1234");
pst = con.prepareStatement("insert into student(studname,course,address,phone)values(?,?,?,?)");
pst.setString(1,teachername);
pst.setString(2,course);
pst.setString(3,address);
pst.setString(4,phone);
pst.executeUpdate();

out.println("Record Addeddd");
%>