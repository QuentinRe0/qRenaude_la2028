<%--
    Document   : listerAthletes
    Created on : 25 août 2026, 12:27:51
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.la2028.model.Athlete"%>
<%@page import="sio.la2028.model.Pays"%>
<%@ page import="sio.la2028.model.Epreuve" %>
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
</html>
