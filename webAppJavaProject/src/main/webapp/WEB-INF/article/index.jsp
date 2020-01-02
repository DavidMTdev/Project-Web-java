<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Article</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/pulse/bootstrap.min.css">
</head>

<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container">
				<a class="navbar-brand" href="/webAppJavaProject/">Java Project
					Blog</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
					aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="/webAppJavaProject/">Accueil </a></li>
						<li class="nav-item"><a class="nav-link" href="/webAppJavaProject/article/">Articles</a></li>
						<li class="nav-item"><a class="nav-link" href="/webAppJavaProject/authors/">Auteurs</a></li>
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown"
								href="#" role="button" aria-haspopup="true" aria-expanded="true">Mes
								Articles</a>
							<div class="dropdown-menu"
								style="position: absolute; transform: translate3d(0px, 53px, 0px); top: 0px; left: 0px; will-change: transform;"
								x-placement="bottom-start">
								<a class="dropdown-item" href="/webAppJavaProject/article/add/">Ajouter</a> <a
									class="dropdown-item" href="/webAppJavaProject/article/admin/">Modifier</a>
								<a class="dropdown-item" href="/webAppJavaProject/article/admin/">Supprimer</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<div class="container">
			<div class="row justify-content-center my-5">
				<c:forEach items="${ articles }" var="article">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="/webAppJavaProject/article/post/?id=<c:out value='${ article.getId()}' />">
										<c:out value="${ article.getTitle() }" /></a>
								</h4>
								<h5>
									<c:out value="${ article.getAuthor() }" />
								</h5>
								<p class="card-text">
									<c:out value="${ article.getContent() }" />
								</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">
									<c:out value="${ article.getRegisterDate() }" /></small>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</main>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>

</html>