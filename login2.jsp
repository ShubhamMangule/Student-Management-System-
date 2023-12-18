<%@page import="java.sql.*" %>
<%
    String s1 = request.getParameter("un");
    String s2 = request.getParameter("up");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///ajava77?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from login where UNAME='" + s1 + "'and UPASS='" + s2 + "'");
        if (rs.next()) {
            response.sendRedirect("mymenu2.jsp");
        } else {
//            out.println("invalid username and password");
         response.sendRedirect("login.jsp?s1=Invalid user name and Password");
       }
        con.close();
    } catch (Exception e1) {
        out.println(e1);
    }


%>