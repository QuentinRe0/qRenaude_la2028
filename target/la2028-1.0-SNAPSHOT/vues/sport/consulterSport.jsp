<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.la2028.model.Athlete"%>
<%@page import="sio.la2028.model.Pays"%>
<%@ page import="sio.la2028.model.Sport" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>LOS ANGELES 2028</title>
</head>
<body>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>LOS ANGELES 2028</title>
</head>
<body>

<div class="navbar">
    <a  href ='../ServletAthlete/lister' class="navbar-brand" href=".">Système de gestion des athlètes</a>
    <a  href ='../ServletEpreuve/lister' class="navbar-brand" href=".">Système de gestion des épreuves</a>
    <a  href ='../ServletPays/lister' class="navbar-brand" href=".">Système de gestion des pays</a>
    <a  href ='../ServletSite/lister' class="navbar-brand" href=".">Système de gestion des sites</a>
    <a  href ='../ServletSport/lister' class="navbar-brand" href=".">Système de gestion des sports</a>
</div>

    <%
                Sport s = (Sport) request.getAttribute("pSport");
        %>
<h1><%  out.println(s.getNom());%></h1>


<table>
    <tr>
        <td>Id: </td><td><%  out.println(s.getId());%></td>
    </tr>

</table>
</html>