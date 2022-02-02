<%-- 
    Document   : course
    Created on : 13-Nov-2021, 12:13:15 pm
    Author     : yash jangid
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <title>Student Portal</title>

        
    </head>
    <body>
        <h1>Course</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="studentdata.jsp">
                    <%
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;

                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudent", "root", "1234");
                                String id = request.getParameter("id");
                                pst = con.prepareStatement("select * from student where id = ?");
                                pst.setString(1, id);
                                rs = pst.executeQuery();
                                while(rs.next()){
                                
                        
                    %>
                    
                    <div>
                         <label class="form-label">Student Id</label>
                         <input type="text" id="id" name="id" class="form-control" placeholder="Student ID" value="<%=rs.getString("id")%>" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="bname">Student Name</label>
                        <input type="text" id="sname" name="sname" class="form-control" placeholder="Student Name" value="<%=rs.getString("studname")%>" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="course">Course Name</label>
                        <input type="text" id="course" name="course" class="form-control" placeholder="Course Name" value="<%=rs.getString("course")%>" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="batch">Batch Name</label>
                        <input type="text" id="batch" name="batch" class="form-control" placeholder="Batch Name" value="<%=rs.getString("batch")%>" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="address">Address</label>
                        <input type="text" id="address" name="address" class="form-control" placeholder="Address" value="<%=rs.getString("address")%>" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="phone">Phone</label>
                        <input type="text" id="phone" name="phone" class="form-control" placeholder="phone" value="<%=rs.getString("phone")%>" required autocomplete="off">
                    </div>
                    <br>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-info" value="reset">
                    </div>
                    <% } %>
                </form>
            </div>
            <div class="col-sm-8">
                
            </div>
        </div>
    </body>
</html>
