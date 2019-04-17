<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="g" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <style>
        body{
            background-color: mediumaquamarine;
        }
        
        h1{
            font-family: serif;
            font-size: 200%;
            alignment-adjust: baseline;
            color : darkred;
            font-style:inherit;
            font-variant-caps: petite-caps;
        }
        input[type=text], input[type=number]{
    width: 100%;
    padding: 3px 3px;
    margin: 2px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var = "empid" driver = "com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost:3306/employee" user = "root"  password = "root"/>
        <sql:query dataSource = "${empid}" sql="select empid from empdetails order by empid desc limit 1" var = "result"/>
        <g:forEach  var="emp" items="${result.rows}">
        <g:set var="empid" value="${emp.empid}"/>
        </g:forEach>
    <center><h1><u>Employee Registration</u></h1>
        <table>  <form action="EmpR" method="get">
                <tr><td> EmpId:<span>${empid+1}</span></td><td><input type="hidden" name="empid" value="${empid+1}"  ></tr></td>
           <tr><td> FirstName:</td><td><input type="text" name="firstname"  placeholder="enter firstname here.." required="required"></tr></td>       
           <tr><td> LastName:</td><td><input type="text" name="lastname" placeholder="enter lastname here.." required="required"></tr></td>
           <tr><td> Password:</td><td><input type="text" name="password" placeholder="enter password here.." required="required"></tr></td>
           <tr><td> Gender:</td><td><input type="radio" name="gender" value="male"> Male
            <input type="radio" name="gender" value="female"> Female </tr></td>
          <tr><td>  Age:</td><td><input type="text" name="age" placeholder="enter age here.." required="required"></tr></td>
           <tr><td> Address:</td><td><input type="text" name="add" placeholder="enter address here" required="required"></tr></td>
           <tr><td> Designation:</td><td><input type="text" name="designation" placeholder="enter designation" required="required"></tr></td>
          <tr><td>  Salary:</td><td><input type="text" name="salary" placeholder="enter salary" required="required"></tr></td>
          <tr><td>  PhoneNumber:</td><td><input type="text" name="phone" placeholder="enter phone number" required="required"></tr></td>
           <tr><td> Email:</td><td><input type="text" name="email" placeholder="enter email here.." required="required "></tr></td>
          <tr><td>  SkillSet:</td><td><input type="text" name="skill" placeholder="enter skill set here.." required="required"></tr></td>
          <tr><td> Photo:</td><td><a href="upload1.jsp"><input type="button" name="photo"><br><br>
           <tr><td><input type="submit" value="submit"></tr></td>
            </form>
    </center> </table>
</body>
</html>