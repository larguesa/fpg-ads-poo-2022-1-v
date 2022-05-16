<%-- 
    Document   : index
    Created on : 16 de mai. de 2022, 13:38:16
    Author     : rlarg
--%>

<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - MyTasks</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Início</h2>
        <h3>Usuários</h3>
        <table>
            <tr><th>Username</th><th>Name</th></tr>
            <%for(User u: User.getAllUsers()){%>
            <tr>
                <td><%= u.getUsername() %></td>
                <td><%= u.getName() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>