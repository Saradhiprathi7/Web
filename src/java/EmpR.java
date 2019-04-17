
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EmpR extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
                {
           
           int i = Integer.parseInt(request.getParameter("empid"));
        String a = request.getParameter("firstname");      
        String b = request.getParameter("lastname");
        String c = request.getParameter("password");
        String d = request.getParameter("gender");
        int e = Integer.parseInt(request.getParameter("age"));
        String f = request.getParameter("add");
        String g = request.getParameter("designation");
        long h = Long.parseLong(request.getParameter("salary"));
        long j = Long.parseLong(request.getParameter("phone"));
        String k = request.getParameter("email");
        String l = request.getParameter("skill");
        //longblob m=request.getParameter("photo");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
            PreparedStatement pst = con.prepareStatement("insert into empdetails(empid,firstname,lastname,password,gender,age,address,designation,salary,phone,email,skill) values(?,?,?,?,?,?,?,?,?,?,?,?)");
            out.println("conneted");
            pst.setInt(1,i);
            pst.setString(2, a);
            pst.setString(3, b);
            pst.setString(4, c);
            pst.setString(5, d);
            pst.setInt(6, e);
            pst.setString(7, f);
            pst.setString(8, g);
            pst.setLong(9, h);
            pst.setLong(10, j);
            pst.setString(11, k);
            pst.setString(12, l);
            int s= pst.executeUpdate();
            out.println("row inseted"+s);
            
            out.println("succesfull inserted");

        } catch (ClassNotFoundException | SQLException e2) {
            System.out.println(e2);
        }
    }

}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
