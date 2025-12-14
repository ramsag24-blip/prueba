<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Usuario"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio - Streaming</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="estilo.css">
</head>
<body>
<%
    Usuario u = (Usuario) session.getAttribute("usuarioLogueado");
%>

<nav class="navbar navbar-expand-lg bg-white border-bottom">
    <div class="container">
        <a class="navbar-brand fw-bold" href="index.jsp">StreamingApp</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="nav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="categorias">Categorías</a></li>
                <li class="nav-item"><a class="nav-link" href="peliculas">Películas</a></li>
            </ul>

            <div class="d-flex align-items-center gap-2">
                <span class="text-secondary small">
                    <%= (u != null ? u.getNombres() : "") %>
                </span>
                <a class="btn btn-outline-danger btn-sm" href="logout">Salir</a>
            </div>
        </div>
    </div>
</nav>

<div class="container py-4">
    <div class="p-4 p-md-5 hero card-shadow">
        <h1 class="fw-bold mb-2">Bienvenido/a 👋</h1>
        <p class="mb-0">Elige una opción para listar categorías o películas.</p>
    </div>

    <div class="row g-3 mt-3">
        <div class="col-12 col-md-6">
            <div class="card card-shadow border-0 rounded-4 h-100">
                <div class="card-body p-4">
                    <h5 class="fw-semibold">Categorías</h5>
                    <p class="text-secondary">Ver todas las categorías disponibles.</p>
                    <a href="categorias" class="btn btn-primary">Ir a categorías</a>
                </div>
            </div>
        </div>

        <div class="col-12 col-md-6">
            <div class="card card-shadow border-0 rounded-4 h-100">
                <div class="card-body p-4">
                    <h5 class="fw-semibold">Películas</h5>
                    <p class="text-secondary">Listar películas y filtrar por categoría.</p>
                    <a href="peliculas" class="btn btn-primary">Ir a películas</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
