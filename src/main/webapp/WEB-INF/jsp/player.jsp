<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
  <title>Player</title>
  <link href="/webjars/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="/webjars/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<html lang="en">
  <body>

    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="http://localhost:8080/">Lakers Stats</a>
        </div>
        <ul class="nav navbar-nav">
          <li><a href="http://localhost:8080/">Home</a></li>
          <li><a href="http://localhost:8080/roster">Roster</a></li>
          <li><a href="http://localhost:8080/schedule">Schedule</a></li>
        </ul>
      </div>
    </nav>

    <img src="${imgPath}" alt="Player Image" width="260" height="190">
    <table class="table table-striped">

      <c:forEach items="${playerData}" var="row" begin="0" end="0">
        <tr>
          <c:forEach items="${row}" var="rowItem">
            <th>${rowItem}</th>
          </c:forEach>
        <tr>
      </c:forEach>

      <c:forEach items="${playerData}" var="row" begin="1">
        <tr>
          <c:forEach items="${row}" var="rowItem">
            <td>${rowItem}</td>
          </c:forEach>
        <tr>
      </c:forEach>

    </table>
  </body>
</html>