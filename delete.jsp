
<html>
    <%@include file="mymenu2.jsp" %>
    <body>     
        <form action="delete1.jsp">
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
                            <td>Enter RNO</td>
                            <td><input type="text" placeholder="Enter RNO" class="A" name="un"></td>
                        </tr>

                        <tr>
                            <th colspan="2"> <input type="submit" value="Delete" class="B"></th>
                        </tr>
                    </table>
                </center>
            </div>
        </form>
    </body>
</html>
