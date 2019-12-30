<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>delete</title>
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
                                <a class="dropdown-item" href="#">Publier</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/webAppJavaProject/article/add/">Ajouter</a> <a
                                    class="dropdown-item" href="/webAppJavaProject/article/admin/">Modifier</a> <a
                                    class="dropdown-item" href="/webAppJavaProject/article/admin/">Supprimer</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">titre</th>
                    <th scope="col">auteur</th>
                    <th scope="col">description</th>
                    <th scope="col">date</th>
                    <th scope="col">Modidier</th>
                    <th scope="col">Supprimer</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${ articles }" var="article">

                    <tr>
                        <th scope="row">
                            <c:out value="${ article.getId() }" />
                        </th>
                        <td>
                            <c:out value="${ article.getTitle() }" />
                        </td>
                        <td>
                            <c:out value="${ article.getAuthor() }" />
                        </td>
                        <td>
                            <c:out value="${ article.getContent() }" />
                        </td>
                        <td>
                            <c:out value="${ article.getRegisterDate() }" />
                        </td>
                        <td>
                            <form action="/webAppJavaProject/article/admin/update/" method="get">
                                <input type="hidden" name="article" value="<c:out value='${ article.getId() }' />">
                                <button type="submit" class="btn btn-primary">Modifier</button>
                            </form>
                        </td>
                        <td>
                            <form action="/webAppJavaProject/article/admin/delete/" method="get">
                                <input type="hidden" name="article" value="<c:out value='${ article.getId() }' />">
                                <button type="submit" class="btn btn-danger">Supprimer</button>
                            </form>
                        </td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
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