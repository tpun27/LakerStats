<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
  <body>
    <table>

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