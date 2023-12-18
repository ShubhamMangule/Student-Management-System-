<%@page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="abc.css"/>
    </head>
    <body>
        <%@include file="mymenu2.jsp" %>
        <div id='mydata'>
            <center>
                <%
                    String s = request.getParameter("s1");

                    if (s != null) {
                %>
                <%= s%>
                <%}%>
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
                                out.println("your data");
                %>
                <table cellpadding="12">
                    <tr>
                        <td>RNo.</td>
                        <td><%=rs.getString(1)%></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><%=rs.getString(2)%></td>
                    </tr><tr>
                        <td>Phy</td>
                        <td><%=rs.getString(3)%></td>
                    </tr><tr>
                        <td>Che</td>
                        <td><%=rs.getString(4)%></td>
                    </tr><tr>
                        <td>Maths</td>
                        <td><%=rs.getString(5)%></td>
                    </tr>

                </table>

                <%

                            } else {
                                out.println("Invalid Rno.");
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }

                    }
                %>
            </center>
    </body>
</html>