<%@ page import="java.sql.*" %>  
<%
    String empid = request.getParameter("val");
    String firstname = request.getParameter("val");
    String lastname = request.getParameter("val");
    

    if((empid == null || empid.trim().equals("")) &&(firstname == null || firstname.trim().equals("")) && (lastname == null || lastname.trim().equals(""))) {
        out.print("<p>Please enter name!</p>");
    } else {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
            PreparedStatement ps = con.prepareStatement("select * from empdetails where empid like '" + empid + "%' || firstname like '" + firstname + "%' || lastname like '" + lastname + "%'");
            ResultSet rs = ps.executeQuery();

            if (!rs.isBeforeFirst()) {
                out.println("<p>No Record Found!</p>");
            } else {
                out.print("<table border='1' cellpadding='2' width='100%'>");
                out.print("<tr><th>empid</th><th>firstname</th><th>lastname</th><th>password</th><th>gender</th><th>age</th><th>address</th><th>designation</th><th>salary</th><th>phone</th><th>email</th><th>skill</th><th>photo</th></tr>");
                while (rs.next()) {
                    out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3) + "</td> <td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td> <td>" + rs.getString(6) + "</td> <td>" + rs.getString(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9) + "</td><td>" + rs.getString(10) + "</td><td>" + rs.getString(11) + "</td> <td>" + rs.getString(12) + "</td><td>" + rs.getString(13) + "</td><td>"
                            + "<form action='edit.jsp'>"
                            +  "<input type='hidden' name='empid' value="+rs.getString(1)+">"
                            
                            +"<input type='submit' value='edit'/>"
                            + "</form></td></tr>");
                }
                out.print("</table>");
            }//end of else for rs.isBeforeFirst  
            con.close();
        } catch (Exception e) {
            out.print(e);
        }
    }//end of else  
%>  