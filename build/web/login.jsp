<%-- 
    Document   : login
    Created on : 21-Oct-2021, 11:53:15 am
    Author     : yash jangid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <title>ACORN Login</title>
    </head>
    <body>
        
        <div class="row" >
            <div class="col-sm-4" >
                <h1 class="my-3" >Login</h1>
                <form method="POST" action="login" >
                    <div align="Left">
                        <label class="form-label" id="uname">UserName</label>
                        <input type="text" id="uname" name="uname" class="form-control" placeholder="UserName" size="30px" autocomplete="off" required>
                    </div> 
                    <div align="Left">
                        <label class="form-label" id="pass">Password</label>
                        <input type="password" id="pass" name="pass" class="form-control" placeholder="Password" size="30px" autocomplete="off" required>
                    </div> 
                    <br>
                    <div align="Left">
                        <input type="submit" id="submit" name="submit" value="submit" class="btn btn-info"> 
                        <input type="reset" id="reset" name="reset" value="reset" class="btn btn-warning">
                    </div>        
                    
                </form>
            </div>
            <div class="col-sm-8" >
                <img src="images/1.jpg" alt=""/>
            </div>
        </div>
    </body>
</html>
