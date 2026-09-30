
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.la2028.model.Athlete"%>
<%@page import="sio.la2028.model.Pays"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="sio.la2028.model.Sport" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>LOS ANGELES 2028</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

  <title>LOS ANGELES 2028</title>

  <style>
    body {
      padding-top: 50px;
    }
    .special {
      padding-top:50px;
    }
  </style>
</head>
<body>

<div class="navbar">
  <a  href ='../ServletAthlete/lister' class="navbar-brand" href=".">Système de gestion des athlètes</a>
  <a  href ='../ServletEpreuve/lister' class="navbar-brand" href=".">Système de gestion des épreuves</a>
  <a  href ='../ServletPays/lister' class="navbar-brand" href=".">Système de gestion des pays</a>
  <a  href ='../ServletSite/lister' class="navbar-brand" href=".">Système de gestion des sites</a>
  <a  href ='../ServletSport/lister' class="navbar-brand" href=".">Système de gestion des sports</a>
</div>
<body>
<div class="container special">
  <h2 class="h2">Liste des athletes par sport</h2>
  <div class="table-responsive">
      <%
                    Sport s = (Sport)request.getAttribute("pAtSport");
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
</body>
</div>
</div>

</html>

