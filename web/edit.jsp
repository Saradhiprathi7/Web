<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="updated.jsp">
    <style>
        body{
            background-color: darkturquoise;
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
    

    

<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
String eid = request.getParameter("empid");
int id = Integer.parseInt(eid);
PreparedStatement pst = conn.prepareStatement("select * from empdetails where empid=?");
pst.setInt(1, id);
ResultSet rs = pst.executeQuery();
if (rs.next()) {
        %>

        
        <center> <h1><u>Employee Details</u></h1>
            <table><tr><td>Empid: </td><td><input type="text" name="empid" value="<%=rs.getString("empid")%>"> </tr></td>
         <tr><td>  Firstname:</td><td><input type="text" name="firstname" value="<%=rs.getString("firstname")%>"></tr></td>
          <tr><td>  Lastname:</td><td><input type="text" name="lastname" value="<%=rs.getString("lastname")%>"></tr></td>
           <tr><td> Gender:</td><td><input type="text" name="gender" value="<%=rs.getString("gender")%>"></tr></td>
          <tr><td>  Age:</td><td><input type="text" name="age" value="<%=rs.getInt("age")%>"></tr></td>
         <tr><td>   Address:</td><td><input type="text" name="address" value="<%=rs.getString("address")%>"></tr></td>
         <tr><td>   Designation:</td><td><input type="text" name="designation" value="<%=rs.getString("designation")%>"></tr></td>
            <tr><td>Salary:</td><td><input type="text" name="salary" value="<%=rs.getString("salary")%>"></tr></td>
           <tr><td> Phone:</td><td><input type="text" name="phone" value="<%=rs.getString("phone")%>"></tr></td>
           <tr><td> Email:</td><td><input type="text" name="email" value="<%=rs.getString("email")%>"></tr></td>
           <tr><td> Skill:</td><td><input type="text" name="skill" value="<%=rs.getString("skill")%>"></tr></td>
      
          <tr><td>  <input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></tr></td> </table></center>
        
        <%
                }
            } catch (Exception e) {
            }
        %>
    </table>
</form>