<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
  <body>
    <table>

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