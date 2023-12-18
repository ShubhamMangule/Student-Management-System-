<%@page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>
        <%@include file="mymenu2.jsp" %>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql:///ajava77?useSSL=false&allowPublicKeyRetrieval=true", "root", "Shubh@29");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from insmarks2");
        %>
        <div id="mymenu">
            <center>
                <%
                    String s = request.getParameter("s1");

                    if (s != null) {
                %>
                <%= s%>
                <%}%>
                <table cellpadding="8" bg.color="white">
                    <tr>
                        <td> RNo.</td>
                        <td> Name</td>
                        <td> Phy</td>
                        <td> Che</td>
                        <td> Maths</td>
                    </tr>
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                    </tr>
                    <%
                            }
                            con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>
                </table>
            </center>
        </div>
    </body>
</html>
%>