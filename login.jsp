<html>

    <%@include file="mymenu1.jsp" %>
    <body>
        <form action="login2.jsp">
            <div id="mydata">
                <center>
                    <%
                        String s = request.getParameter("s1");
                        if (s != null) {
                    %>
                    <%= s%>
                    <%}%>
                    <table cellpadding="15">
                        <tr>
                            <td>Enter Name</td>
                            <td><input type="text" placeholder="Enter Name" class="A" name="un"></td>
                        </tr>

                        <tr>
                            <td>Enter Pass</td>
                            <td><input type="password" placeholder="Enter password" class="A" name="up"></td>
                        </tr>

                        <tr>
                            <th colspan="2"> <input type="submit" value="Login" class="B"></tH>
                        </tr>
                    </table>
                </center>
            </div>
        </form>
    </body>
</html>
