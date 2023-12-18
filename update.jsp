<%@page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="abc.css"/>
    </head>
    <body>
        <%@include file="mymenu2.jsp" %>
        <div id='mydata'>
            <center>
                <form acrion="search.jsp">
                    <table cellpadding='10'>
                        <tr>
                            <td>Enter Rno.</td>
                            <td><input type='text' placeholder='Enter Rno.' name="u1" class='A'></td>
                        </tr>
                        <tr>
                            <th colspan="2"><input type="submit" class="B" name="b1" value="Search"></th>
                        </tr>
                    </table>
                </form>
                <%
                    String s1 = request.getParameter("b1");
                    if (s1 != null) {
                        String s11 = request.getParameter("u1");
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql:///ajava77?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from insmarks2 where RNo='" + s11 + "'");
                            if (rs.next()) {
                %>
                <table cellpadding="12">

                    <form acrion="showall.jsp">
                        <tr>
                            <td>RNo.</td>
                            <td><td><input type='text' value=<%= rs.getString(1)%> name="n1"></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><td><input type='text' value=<%= rs.getString(2)%> name="n2"></td>
                        </tr><tr>
                            <td>Phy</td>
                            <td><td><input type='text' value=<%= rs.getString(3)%> name="n3"></td>
                        </tr><tr>
                            <td>Che</td>
                            <td><td><input type='text' value=<%= rs.getString(4)%> name="n4"></td>
                        </tr><tr>
                            <td>Maths</td>
                            <td><td><input type='text' value=<%= rs.getString(5)%> name="n5"></td>
                        </tr>

                        <tr>
                            <th colspan="3"><input type="submit" class="B" name="b2" value="Update"></th>
                        </tr>
                    </form>
                </table>      

                <%
                            } else {
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }

                    }
                %>

            </center>
    </body>
</html>

<%
    String s2 = request.getParameter("b2");
    if (s2 != null) {
        String s21 = request.getParameter("n1");
        String s22 = request.getParameter("n2");
        String s23 = request.getParameter("n3");
        String s24 = request.getParameter("n4");
        String s25 = request.getParameter("n5");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql:///ajava77?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
            Statement st = con.createStatement();
            st.executeUpdate("update insmarks2 set NAME='" + s22 + "',PHY='" + s23 + "',CHE='" + s24 + "',MATHS='" + s25 + "' where RNo='" + s21 + "'");

            response.sendRedirect("showall.jsp");

        } catch (Exception e) {
            out.println(e);
        }

    }

%>