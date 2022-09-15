<%-- 
    Document   : agecalculator
    Created on : Sep 12, 2022, 10:18:48 PM
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        
        <form action="age" method="POST">
            <table><tr>
                    <td><label>Enter your age:</label> </td>
                    <td><input type="number" id="age" name="age" value=""></td></tr><tr>
                    <td><button type="submit"><strong>Age Next Birthday</strong></button></td></tr>
            </table>
        </form>
        
        <% if (request.getAttribute("age") != null) { %>
        <p>Your age next birthday will be <%= request.getAttribute("age") %></p>
        <% } %>

        <% if (request.getAttribute("message") != null) { %>
        <p><%= request.getAttribute("message") %></p>
        <% } %>
        
        <a href="arithmetic">Arithmetic Calculator</a>
    </body>
</html>
