<html>
    <%@include file="mymenu2.jsp" %>
    <body>
        <form action="insert2.jsp">
            <div id="mydata">
                <center>
                       
                    <table cellpadding="15">
                        <tr>
                            <td>Enter Rollno</td>
                            <td><input type="text" placeholder="Enter Rollno" class="A" name="u1"></td>
                        </tr>

                        <tr>
                            <td>Enter Name</td>
                            <td><input type="text" placeholder="Enter Name" class="A" name="u2"></td>
                        </tr>

                        <tr>
                            <td>Enter Phy</td>
                            <td><input type="text" placeholder="Enter Phy" class="A" name="u3"></td>
                        </tr>

                        <tr>
                            <td>Enter Che</td>
                            <td><input type="text" placeholder="Enter Che" class="A" name="u4"></td>
                        </tr>

                        <tr>
                            <td>Enter Math</td>
                            <td><input type="text" placeholder="Enter Math" class="A" name="u5"></td>
                        </tr>

                        <tr>
                            <th colspan="2"> <input type="submit" value="Insert" class="B"></th>
                        </tr>
                    </table>
                </center>
            </div>
        </form>
    </body>
</html>