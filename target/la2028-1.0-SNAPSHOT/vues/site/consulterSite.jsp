<%--
    Document   : listerSports
    Created on : 25 août 2026, 12:27:51
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="sio.la2028.model.*" %>
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
                Site s = (Site) request.getAttribute("pSite");
        %>
<h1><%  out.println(s.getNom());%></h1>


<table>
    <tr>
        <td>Id: </td><td><%  out.println(s.getId());%></td>
    </tr>
    <tr>
        <td>Emplacement: </td><td><%  out.println(s.getEmplacement());%></td>
    </tr>
</table>

<h1>Liste des Sports ayant lieux à ce site</h1>


    <%

                    ArrayList<Sport> lesSports = (ArrayList)request.getAttribute("pLesSports");
                %>

<table class="table table-striped table-sm">
    <thead>
    <tr>
        <th>id</th>
        <th>nom</th>

    </tr>
    </thead>
    <tbody>
    <tr>
        <%
            for (Sport sp : lesSports)

            {
                out.println("<tr><td>");
                out.println(sp.getId());
                out.println("</td>");

                out.println("<td>");
                out.println(sp.getNom());
                out.println("</td>");



            }
        %>
    </tr>
    </tbody>
</table>

</html>
