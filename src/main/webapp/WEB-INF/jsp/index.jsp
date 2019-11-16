<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
  <title>Lakers Home</title>
  <script src="/webjars/jquery/1.12.4/jquery.min.js"></script>
  <link href="/webjars/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="/webjars/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
     body { background: #659DBD; !important; }
  </style>
</head>

<html lang="en">
  <body>

    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="http://localhost:8080/">Lakers Stats</a>
        </div>
        <ul class="nav navbar-nav">
          <li class="active"><a href="http://localhost:8080/">Home</a></li>
          <li><a href="http://localhost:8080/roster">Roster</a></li>
          <li><a href="http://localhost:8080/schedule">Schedule</a></li>
        </ul>
      </div>
    </nav>

    <div class="container">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>

        <div class="carousel-inner">
          <div class="item active">
            <img src="/img/lebron.jpg" alt="Lebron" style="width:100%;">
          </div>

          <div class="item">
            <img src="/img/kobe.jpg" alt="Kobe" style="width:100%;">
          </div>
        </div>

        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </body>
</html>