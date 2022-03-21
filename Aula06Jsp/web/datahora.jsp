<%-- 
    Document   : index
    Created on : 21 de mar. de 2022, 13:36:39
    Author     : rlarg
    Este é um comentário JSP
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 
    Este é um comentário HTML
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JavaEE JSP</title>
    </head>
    <body>
        <% Date agora = new Date(); %>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>JavaEE</h1>
        <h2>Java Server Pages</h2>
        <h3>Data/Hora do servidor</h3>
        <h4>Mostrando server date com scriptlet</h4>
        <div>
            <%
                out.print(agora);
            %>
        </div>
        <h4>Mostrando server date com expression</h4>
        <div><%= agora %></div>
    </body>
</html>