<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                background-color: deepskyblue;
                background-image:repeating-linear-gradient;
                margin-top: 90px;
            }
            .container
            {
             position: relative;   
            }
        </style>
    </head>
    <body><center>
        <form action="edit.jsp" method="post">
        <h2>Update Employee Details</h2>
  
        EmpId:<input type="text" name="empid" placeholder="enter your id no"/>
   
       <input type='submit' value='Edit'/>
        </form></center>
    </body>
</html>

