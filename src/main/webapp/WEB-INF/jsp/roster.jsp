<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
  <title>Lakers Roster</title>
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
          <li class="active"><a href="http://localhost:8080/roster">Roster</a></li>
          <li><a href="http://localhost:8080/schedule">Schedule</a></li>
        </ul>
      </div>
    </nav>

    <img src="/img/logo.png" alt="Logo" width="260" height="190">
    <table class="table table-striped">

      <c:forEach items="${rosterData}" var="row" begin="0" end="0">
        <tr>
          <c:forEach items="${row}" var="rowItem">
            <th>${rowItem}</th>
          </c:forEach>
        <tr>
      </c:forEach>

      <c:forEach items="${rosterData}" var="row" begin="1">
        <tr>
          <c:forEach items="${row}" var="rowItem">

            <c:choose>
              <c:when test="${fn:startsWith(rowItem, '#')}">
                <td><a href="${'http://localhost:8080/player/'}${fn:substring(rowItem, 1, fn:length(rowItem)+1)}">${rowItem}</a></td>
              </c:when>

              <c:otherwise>
                <td>${rowItem}</td>
              </c:otherwise>
            </c:choose>

          </c:forEach>
        <tr>
      </c:forEach>

    </table>
  </body>
</html>