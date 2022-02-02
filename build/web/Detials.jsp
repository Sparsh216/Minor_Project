<%-- 
    Document   : Detials
    Created on : 17-Nov-2021, 10:37:05 am
    Author     : yash jangid
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <title>Details</title>
    </head>
    <body>
        <h1>Details</h1>
        <form method="POST" align="left" action="decide.jsp"> 
                    <div>
                         <label class="form-label" id="details">Details</label>
                         <select name="details" id="details" class="form-control" style="width: 50%">
                             <option value="Student">Student</option>;
                             <option value="Teacher">Teacher</option>;
                         </select>
                    </div>
                  
                    <br>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                        <input type="reset" name="reset" class="btn btn-info" value="reset">
                    </div>
                    
                </form>
    </body>
</html>
