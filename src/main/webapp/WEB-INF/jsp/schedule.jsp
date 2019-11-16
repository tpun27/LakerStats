<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
  <title>Schedule</title>
  <link href="/webjars/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="/webjars/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<html lang="en">
  <body>

    <div class="jumbotron" style="background-color:#FFED64;">
      <h1 class="display-1">Games Played</h1>
    </div>
    <table class="table table-striped">

      <c:forEach items="${playedData}" var="row" begin="0" end="0">
        <tr>
          <c:forEach items="${row}" var="rowItem">
            <th>${rowItem}</th>
          </c:forEach>
        <tr>
      </c:forEach>

      <c:forEach items="${playedData}" var="row" begin="1">
        <tr>
          <c:forEach items="${row}" var="rowItem">
            <td>${rowItem}</td>
          </c:forEach>
        <tr>
      </c:forEach>

    </table>

    <div class="jumbotron" style="background-color:#FFED64;">
      <h1 class="display-1">Games Scheduled</h1>
    </div>
    <table class="table table-striped">

      <c:forEach items="${scheduleData}" var="row" begin="0" end="0">
        <tr>
          <c:forEach items="${row}" var="rowItem">
            <th>${rowItem}</th>
          </c:forEach>
        <tr>
      </c:forEach>

      <c:forEach items="${scheduleData}" var="row" begin="1">
        <tr>
          <c:forEach items="${row}" var="rowItem">
            <td>${rowItem}</td>
          </c:forEach>
        <tr>
      </c:forEach>

    </table>
  </body>
</html>