<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta name="autor" content="Victoria Sevilla">
<meta charset="UTF-8">
<title>Vinos La Mancha</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>  
 <link rel="icon" href="img/wine.png">

</head><img src="img/viñas7.jpeg" class="img-fluid" alt="..."><body>
<div class="container mt-5">2

<h2>&#127815;&#127815;Catálogo de Vinos&#127815;&#127815;</h2>

	<form action="Controller" method="get" class="form-control needs-validation btn btn-secondary" novalidate>
	<div class="form-group">
	
	<label for="producto" class="label-group">Producto</label>
	<input type="text" name="producto" class="form-control" required pattern="[[a-zA-ZáéíóúÁÉÍÓÚÑ ]+" maxlength="20"><br>
	
	<label for="descripcion" class="label-group">Descripcion</label>
    <textarea type="text" name="descripcion" class="form-control" required pattern="[a-zA-ZáéíóúÁÉÍÓÚÑ ]+" maxlength="100"></textarea>
 	 </div><div>
	<label for="cantidad" class="label-group">Cantidad</label>
	<input type="text" name="cantidad" class="form-control" required pattern="[0-9]{9}[9-500]{500} ">
	<br></div>
	<input type="submit" name="enviar" value="Aceptar" class="btn btn-danger border-3 border-dark">
	</form>
	<c:if test="${not empty msg}">
      <div class="my-4 bg-ligth">
      <c:out value="${msg}"/>
      </div>
</c:if>
<c:if test="${not empty producto}">
<table class="table table-striped table-info">
  	 <tr class="table-primary">
		      <th>ID</th>
		      <th>Producto</th>
		      <th>Descripción</th>
		      <th>Cantidad</th>
		      <th>Acciones</th>   
     </tr>	
     	
      <c:forEach items="${producto}" var="vinoB">
       <tr>
           <td><c:out value="${vinoB.idPI}"></c:out></td>
           <td><c:out value="${vinoB.producto}"></c:out></td>
           <td><c:out value="${vinoB.descripcion}"></c:out></td>
           <td><c:out value="${vinoB.cantidad}"></c:out></td>
           <td>
           <a href="#" class="h6">Editar&#9999;</a>
           <a href="#" class="h6">Borrar&#128465;</a>
           </td>
           </tr>
           </c:forEach>
	</table>
	</c:if>
</div>


<script src="<c:url value="js/script.js"/>"></script>
<aside></aside>

</body>
</html>
