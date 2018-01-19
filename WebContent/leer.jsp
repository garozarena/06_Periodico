<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
  
  <link rel="stylesheet" type="text/css" href="css/style.css">
<title>Periodico</title>
</head>
<body>
<header>
	<h2>LEER NOTICIAS</h2>
</header>
<section>
<div class="container">
	<div class="row">
		<div class="col s1"></div>
			<div class="col s4 btnConsultar">
				<a class="waves-effect waves-light btn light-green accent-2 grey-text text-darken-4" href="Consultar">Consultar</a>
			</div>
			<div class="col s4"></div>
			<div class="col s1 btnConsultar">
				<a class="waves-effect waves-light btn" href="anadir.jsp">Añadir</a>
			</div>
		<div class="col s2"></div>
	</div>

	
	<div class="row newsList">
		<div class="col s1"></div>
		<div class="col s10">
			<% String msg = (String)session.getAttribute("servletMsg"); 
				if(msg!=null)out.println(msg);
				%>
		</div>
		<div class="col s1"></div>
	</div>
</div>
</section>
<footer>
</footer>
</body>
</html>