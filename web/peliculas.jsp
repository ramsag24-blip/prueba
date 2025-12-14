<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Pelicula"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Películas - StreamingApp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="estilo.css">
</head>
<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg bg-white border-bottom">
    <div class="container">
        <a class="navbar-brand fw-bold" href="index.jsp">StreamingApp</a>

        <div class="d-flex gap-2">
            <a class="btn btn-outline-secondary btn-sm" href="index.jsp">Inicio</a>
            <a class="btn btn-outline-primary btn-sm" href="categorias">Categorías</a>
            <a class="btn btn-outline-danger btn-sm" href="logout">Salir</a>
        </div>
    </div>
</nav>

<!-- CONTENIDO -->
<div class="container py-4">

    <!-- CABECERA -->
    <div class="d-flex align-items-center justify-content-between mb-3 flex-wrap gap-2">
        <div>
            <h3 class="mb-1">Películas</h3>
            <div class="text-secondary small">
                <%
                    String idCat = request.getParameter("idCategoria");
                    if (idCat != null) {
                %>
                    Mostrando películas de la categoría ID: <strong><%= idCat %></strong>
                <%
                    } else {
                %>
                    Mostrando todas las películas
                <%
                    }
                %>
            </div>
        </div>

        <div class="d-flex gap-2">
            <a href="peliculas/nuevo" class="btn btn-success">
                + Agregar película
            </a>
            <a href="peliculas" class="btn btn-primary">
                Quitar filtro
            </a>
        </div>
    </div>

    <!-- TABLA -->
    <%
        List<Pelicula> peliculas = (List<Pelicula>) request.getAttribute("peliculas");
        if (peliculas != null && !peliculas.isEmpty()) {
    %>

    <div class="card card-shadow border-0 rounded-4">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="table-light">
                        <tr>
                            <th class="ps-4">Título</th>
                            <th>Año</th>
                            <th>Duración</th>
                            <th>Descripción</th>
                            <th class="pe-4">Categoría ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Pelicula p : peliculas) { %>
                        <tr>
                            <td class="ps-4 fw-semibold">
                                <%= p.getTitulo() %>
                            </td>
                            <td>
                                <span class="badge text-bg-secondary">
                                    <%= p.getAnio() %>
                                </span>
                            </td>
                            <td>
                                <%= p.getDuracionMin() %> min
                            </td>
                            <td class="text-secondary">
                                <%= p.getDescripcion() %>
                            </td>
                            <td class="pe-4">
                                <span class="badge text-bg-primary">
                                    <%= p.getIdCategoria() %>
                                </span>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <%
        } else {
    %>
        <div class="alert alert-warning">
            No hay películas para mostrar.
        </div>
    <%
        }
    %>

</div>

</body>
</html>
