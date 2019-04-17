<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@p age import="java.sql.Connection"%>
<%
    String user = request.getParameter("user");
    String pwd = request.getParameter("pwd");
    String t = request.getParameter("typeofuser");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from emp where username='" + user + "' and password='" + pwd + "' and usertype='" + t + "' ");

    System.out.println(t);
    if (rs.next()) 
    {
        if (t.equals("Admin")) {
            response.sendRedirect("Admin.jsp");
        } else if (t.equals("Adminpeople")) {
            response.sendRedirect("Adminpeople.jsp");
        } else if (t.equals("--select--")) {
            response.sendRedirect("login.jsp");

        } else {
            response.sendRedirect("Employee.jsp");
        }
    } else {
        // out.println("Invalid password <a href='login.jsp'>try again</a>");
        out.println("Invalid, Username and Password");
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.include(request, response);
    }

%>