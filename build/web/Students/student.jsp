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
        <h1>Student Registration</h1>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                         <label class="form-label" id="sname">Student Name</label>
                        <input type="text" id="sname" name="sname" class="form-control" placeholder="Student Name" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="course">Course</label>
                        <input type="text" id="course" name="course" class="form-control" placeholder="Course" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="batch">Batch</label>
                        <input type="text" id="batch" name="batch" class="form-control" placeholder="Batch" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="address">Address</label>
                        <input type="text" id="address" name="address" class="form-control" placeholder="Address" required autocomplete="off">
                    </div>
                    <div>
                         <label class="form-label" id="phone">Phone</label>
                        <input type="number" id="phone" name="phone" class="form-control" placeholder="Phone" required autocomplete="off">
                    </div>
                    <br>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-info" value="reset">
                    </div>
                    
                </form>
            </div>
            <div class="col-sm-8">
                <div class="panel-body">
                    <table id="tb1-course" class="table table-responsive table-bordered" cellpadding="0" width='100%'>
                        <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>Course</th>
                                <th>Batch</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Edit</th>
                                <th>Edit</th>
                            </tr>
                    </table>
                    
                </div>
            </div>     
        </div>
         
    </body>
</html>
