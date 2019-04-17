<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            window.history.forward();
            function noBack()
            {
                window.history.forward()
            }
        </script>
        <style>
            body
            {
                background-color: mediumturquoise;
                background-image:repeating-linear-gradient;
                margin-top: 90px;
            }
            .container
            {
             position: relative;   
            }
        </style>
    </head>
    <body onload="noBack()">
       
            <center>  <h1> Welcome To Richiees Soft Solutions</h1></center>
            <form action="login2.jsp" method="post">
            <center> <tr>  UserName:<input type="text" name="user" placeholder="enter user name" required="please fill the filed"></br><br></tr>
                <tr> Password:<input type="password" name="pwd" placeholder="enter password" required="please fill the field"></br><br></tr>
                <select name="typeofuser">
                    <option selected>--select--</option>
                    <option  value="Admin">Admin</option>
                    <option  value="AdminPeople">Adminpeople</option>
                    <option  value="Employee">Employee</option>
                </select>
                <input type="submit"/></center>
        </form>
    </body>
</html>