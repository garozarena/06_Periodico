<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--Import materialize.css-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

<link rel="stylesheet" type="text/css" href="css/style.css">

<title>Periodico</title>
</head>
<body>
	<header>
	<h2>LEER NOTICIAS</h2>
	</header>
	<section>
	<div class="row">
		<form class="col s12" method="post" action="Anadir">
		
			<div class="row">
				<div class="col s3"></div>
				<div class="input-field col s6">
					<input id="titulo" type="text" class="validate" name="titulo"> 
					<label for="titulo">Título de la noticia</label>
				</div>
			</div>

			<div class="row">
				<div class="col s3"></div>
				<div class="input-field col s6">
					<textarea id="textarea1" class="materialize-textarea" name="contenido"></textarea>
					<label for="textarea1">Texto de la noticia</label>
				</div>
				<div class="col s3>"></div>
			</div>
			
			<div class="row">
				<div class="col s3"></div>
				<div class="input-field col s6">
					<input id="email" type="email" class="validate" name="email">
            		<label for="email" data-error="wrong" data-success="right">Email</label>
				</div>
			</div>
			
			<div class="row">
				<div class="col s3"></div>
					<div class="input-field col s6">
				    <select name="categoria">
				      <option value="" disabled selected>Elige categoria</option>
				      <option value="1">Categoria 1</option>
				      <option value="2">Categoría 2</option>
				      <option value="3">Categoría 3</option>
				      <option value="4">Categoría 3</option>
				    </select>
				    <label>Categoría</label>
				  </div>
				<div class="col s3"></div>
			</div>
			
			<div class="row">
			<div class="col s3"></div>
				<div class="col s2">
					<input type="submit" class="waves-effect waves-light btn" value="Publicar">
				</div>
				<div class="col s2"></div>
				<div class="col s2">
					<a href="leer.jsp" class="waves-effect waves-light btn deep-orange darken-2">Cancelar</a>
				</div>
				<div class="col s3"></div>
				
				
			</div>
		
		</form>
	</div>
	</section>
	<footer> </footer>
	
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('select').material_select();
  });
</script>

</body>
</html>