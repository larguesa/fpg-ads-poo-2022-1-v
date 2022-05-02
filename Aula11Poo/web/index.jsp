<%-- 
    Document   : index
    Created on : 2 de mai. de 2022, 13:48:17
    Author     : rlarg
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="demo.Pessoa"%>
<%
    Pessoa ramiro = new Pessoa("Ramiro");
    Pessoa maria = new Pessoa("Maria");
    Pessoa albina = new Pessoa("Albina");
    Pessoa jose = new Pessoa("José");
    jose.setPai(ramiro);
    jose.setMãe(maria);
    Pessoa mariaHelena = new Pessoa("Maria Helena");
    mariaHelena.setMãe(albina);
    Pessoa eu = new Pessoa("Ricardo");
    eu.setPai(jose);
    eu.setMãe(mariaHelena);
    Pessoa joseRicardo = new Pessoa("José Ricardo");
    joseRicardo.setPai(eu);
    Pessoa mariaEduarda = new Pessoa("Maria Eduarda");
    mariaEduarda.setPai(eu);
    ArrayList<Pessoa> lista = new ArrayList<>();
    lista.add(ramiro); lista.add(maria); lista.add(jose);
    lista.add(albina); lista.add(mariaHelena); lista.add(eu);
    lista.add(joseRicardo); lista.add(mariaEduarda);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Associação recursiva - POO</title>
    </head>
    <body>
        <h1>POO</h1>
        <h2>Associação recursiva - árvore genealógica</h2>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Pai</th>
                <th>Avô Paterno</th>
                <th>Avó Paterna</th>
                <th>Mãe</th>
                <th>Avô Materno</th>
                <th>Avó Materna</th>
            </tr>
            <%for(Pessoa p: lista){%>
            <tr>
                <td><%= p.getNome() %></td>
                <td><%= (p.getPai()!=null) ? p.getPai().getNome(): "" %></td>
                <td><%= (p.getAvôPaterno()!=null) ? p.getAvôPaterno().getNome(): "" %></td>
                <td><%= (p.getAvóPaterna()!=null) ? p.getAvóPaterna().getNome(): "" %></td>
                <td><%= (p.getMãe()!=null) ? p.getMãe().getNome(): "" %></td>
                <td><%= (p.getAvôMaterno()!=null) ? p.getAvôMaterno().getNome(): "" %></td>
                <td><%= (p.getAvóMaterna()!=null) ? p.getAvóMaterna().getNome(): "" %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
