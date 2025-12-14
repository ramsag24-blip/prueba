<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Categoria"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Categorías - Streaming</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="estilo.css">
</head>
<body>

<nav class="navbar navbar-expand-lg bg-white border-bottom">
    <div class="container">
        <a class="navbar-brand fw-bold" href="index.jsp">StreamingApp</a>
        <div class="d-flex gap-2">
            <a class="btn btn-outline-secondary btn-sm" href="index.jsp">Inicio</a>
            <a class="btn btn-outline-danger btn-sm" href="logout">Salir</a>
        </div>
    </div>
</nav>

<div class="container py-4">
    <div class="d-flex align-items-center justify-content-between mb-3">
        <h3 class="mb-0">Categorías</h3>
        <a class="btn btn-primary" href="peliculas">Ver todas las películas</a>
    </div>

    <p class="text-danger">${error}</p>

    <%
        List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
        if (categorias != null && !categorias.isEmpty()) {
    %>
    <div class="row g-3">
        <% for (Categoria c : categorias) { %>
        <div class="col-12 col-md-6 col-lg-4">
            <div class="card card-shadow border-0 rounded-4 h-100">
                <div class="card-body p-4">
                    <h5 class="fw-semibold mb-2"><%= c.getNombre() %></h5>
                    <p class="text-secondary mb-3">Explora películas de esta categoría.</p>
                    <a class="btn btn-outline-primary w-100"
                       href="peliculas?idCategoria=<%= c.getId() %>">
                        Ver películas
                    </a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
    <%
        } else {
    %>
        <div class="alert alert-warning">No hay categorías para mostrar.</div>
    <%
        }
    %>
</div>

</body>
</html>
