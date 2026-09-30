<%@ page import="sio.la2028.model.Sport" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sio2
  Date: 09/09/2026
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <h2 class="h2">Liste des sports</h2>
  <div class="table-responsive">
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
          for (Sport s : lesSports)
          {
            out.println("<tr><td>");
            out.println(s.getId());
            out.println("</td>");

            out.println("<td><a href ='../ServletSport/consulter?idSport="+ s.getId()+ "'>");
            out.println(s.getNom());
            out.println("</td>");

            out.println("<td><a href ='../ServletSport/listerAthleteBySport?idSport="+ s.getId()+ "'>");
            out.println("Voir les Athlete inscrit a ce sport");
            out.println("</a></td>");
          }
        %>
      </tr>
      </tbody>
    </table>
</body>
</div>
</div>
</html>
