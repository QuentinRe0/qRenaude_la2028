<%-- 
    Document   : listerAthletes
    Created on : 25 août 2026, 12:27:51
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.la2028.model.Athlete"%>
<%@page import="sio.la2028.model.Pays"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOS ANGELES 2028</title>
    </head>
    <body>
        <head>
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
                Athlete a = (Athlete)request.getAttribute("pAthlete");
        %>
        <h1><%  out.println(a.getNom()); %></h1>
        <%  out.println("<img src="+request.getContextPath()+a.getPhoto()+">");%>
            
                         
            <table>

            <tr>
                <td>Id: </td><td><%  out.println(a.getId()); %></td>
            </tr>
                <tr>
                    <td>Prénom: </td><td><%  out.println(a.getPrenom());%></td>
                </tr>
                <tr>
                    <td>Sport: </td><td><%  out.println(a.getSport().getNom());%></td>
                </tr>
                <tr>
                    <td>Date de Naissance: </td><td><%  out.println(a.getDateNaissfr());%></td>
                </tr>
                <tr>
                    <td>Âge: </td><td><%  out.println(a.getAge());%></td>
                </tr>
            <tr>
                <td>Pays : </td><td><%  out.println(a.getPays().getNom());%></td>
                <%  out.println("<img src="+request.getContextPath()+a.getPays().getPhoto()+">");%>

            </tr>
        </table>
</html>
