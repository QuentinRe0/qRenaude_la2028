<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.la2028.model.Athlete"%>
<%@page import="sio.la2028.model.Pays"%>
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
                Pays p = (Pays)request.getAttribute("pPays");
        %>
<h1><%  out.println(p.getNom());%></h1>


<table>
  <tr>
    <td>Id: </td><td><%  out.println(p.getId());%></td>
  </tr>
</table>
</html>