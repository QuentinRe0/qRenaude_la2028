
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="sio.la2028.model.Epreuve" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>LOS ANGELES 2028</title>
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">

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

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a  href ='../ServletEpreuve/lister' class="navbar-brand" href=".">Système de gestion des épreuves</a>
    </div>
  </div>
</nav>
<body>
<div class="container special">
  <h2 class="h2">Liste des épreuves</h2>
  <div class="table-responsive">
      <%
                    ArrayList<Epreuve> lesEpreuves = (ArrayList)request.getAttribute("pLesEpreuves");
                %>
    <table class="table table-striped table-sm">
      <thead>
      <tr>
        <th>id</th>
        <th>nom</th>
        <th>sport</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <%
          for (Epreuve e : lesEpreuves)
          {
            out.println("<tr><td>");
            out.println(e.getId());
            out.println("</td>");


            out.println("<td><a href ='../ServletEpreuve/consulter?idEpreuve="+ e.getId()+ "'>");
            out.println(e.getNom());
            out.println("</td>");;

            out.println("<td>");
            out.println(e.getSport().getNom());
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

