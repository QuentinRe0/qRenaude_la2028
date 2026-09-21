<%--
    Document   : listerAthletes
    Created on : 25 août 2026, 12:27:51
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.la2028.model.Athlete"%>
<%@page import="sio.la2028.model.Pays"%>
<%@ page import="sio.la2028.model.Epreuve" %>
<%@ page import="sio.la2028.model.Sport" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>LOS ANGELES 2028</title>
</head>
<body>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>LOS ANGELES 2028</title>
</head>
<body>
    <%
                Epreuve e = (Epreuve) request.getAttribute("pEpreuve");
        %>
<h1><%  out.println(e.getNom());%></h1>


<table>
    <tr>
        <td>Id: </td><td><%  out.println(e.getId());%></td>
    </tr>
    <tr>
        <td>Sport: </td><td><%  out.println(e.getSport().getNom());%></td>
    </tr>
</table>

<h1>Liste des Athlétes ayant participé à cette épreuve</h1>


    <%

                    ArrayList<Athlete> lesAthletes = (ArrayList)request.getAttribute("pLesAthletes");
                %>

<table class="table table-striped table-sm">
    <thead>
    <tr>
        <th>id</th>
        <th>nom</th>
        <th>prenom</th>
        <th>date de naissance</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <%
            for (Athlete a : lesAthletes)

            {
                out.println("<tr><td>");
                out.println(a.getId());
                out.println("</td>");

                out.println("<td>");
                out.println(a.getPrenom());
                out.println("</td>");

                out.println("<td>");
                out.println(a.getNom());
                out.println("</td>");

                out.println("<td>");
                out.println(a.getDateNaissfr());
                out.println("</td>");


            }
        %>
    </tr>
    </tbody>
</table>

</html>
