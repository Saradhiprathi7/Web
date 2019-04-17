<%@page import="java.sql.*"%>
<%
String ide=request.getParameter("empid");
int num=Integer.parseInt(ide);
String a=request.getParameter("firstname");
String b=request.getParameter("lastname");
String c =request.getParameter("gender");
int d=Integer.parseInt(request.getParameter("age"));
String e=request.getParameter("address");
String f=request.getParameter("designation");
long g=Long.parseLong(request.getParameter("salary"));
long h=Long.parseLong(request.getParameter("phone"));
String j=request.getParameter("email");
String k=request.getParameter("skill");
System.out.println("enter");
try{

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root", "root");
PreparedStatement pst=conn.prepareStatement("update empdetails set firstname=? ,lastname=? ,gender=?, age=?, address=? , designation=?, salary=?,phone=?, email=?,skill=? where empid='"+num+"'");
pst.setString(1, a);
pst.setString(2, b);
pst.setString(3, c);
pst.setInt(4, d);
pst.setString(5, e);
pst.setString(6, f);
pst.setLong(7, g);
pst.setLong(8, h);
pst.setString(9, j);
pst.setString(10, k);
pst.executeUpdate(); 
out.println("Successfully Updated");
}
catch(Exception ma)
{
System.out.println(ma);
}
%>