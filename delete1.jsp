<%@page import="java.sql.*" %>  
<%
    String s1 = request.getParameter("un");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql:///ajava77?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
        Statement st = con.createStatement();
        int x= st.executeUpdate("delete from  insmarks2 where RNo='" + s1 + "'");
        response.sendRedirect("showall.jsp?s1=Delete Your Data");
        con.close();
    } catch (Exception e1) {
        out.println(e1);
    }
%>

