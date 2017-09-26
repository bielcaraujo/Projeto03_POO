<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
     <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <h2>Equipe</h2>
        </li>
      </ol>
      <center><div class="row">
        <div class="col-sm-6">
          <img class="img-fluid rounded circle" width="45%" src="res/img/GabrielC.jpg" alt="">
          <h5 class="text-center">Gabriel Colombo</h5><h6 class="text-center">Frontend Developer</h6>
        </div>
        <div class="col-sm-6">
          <img class="img-fluid rounded circle" width="45%" src="res/img/GabrielK.jpg" alt="">
          <h5 class="text-center">Gabriel Kadota</h5><h6 class="text-center">Backend Developer</h6>
        </div>
      </div></center>
      <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
