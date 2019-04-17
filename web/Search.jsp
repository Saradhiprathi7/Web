<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="new.js"></script>
    </head>
    <style>
            body
            {
                background-color: hotpink;
                background-image:repeating-linear-gradient;
                margin-top: 90px;
            }
            .container
            {
             position: relative;   
            }
        </style>
    <body><center>
        <h1>Search Employee</h1>
        <form name="vinform">  
            EmpId:<input type="text" name="empid"   onkeyup="searchInfo()">  
            FirstName:<input type="text" name="firstname"   onkeyup="searchInfo()">  
            LastName:<input type="text" name="lastname"   onkeyup="searchInfo()">  
        </form>  

        <span id="mylocation"></span> </center>
    </body>
</html>