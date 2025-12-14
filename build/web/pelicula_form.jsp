<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Categoria"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Película</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="stylesheet" href="estilo.css">
</head>
<body>
>
<nav class="navbar navbar-expand-lg bg-white border-bottom">
    <div class="container">
        <a class="navbar-brand fw-bold" href="<%= request.getContextPath() %>/index.jsp">
            StreamingApp
        </a>
        <div class="d-flex gap-2">
            <a class="btn btn-outline-secondary btn-sm"
               href="<%= request.getContextPath() %>/peliculas">Volver</a>
            <a class="btn btn-outline-danger btn-sm"
               href="<%= request.getContextPath() %>/logout">Salir</a>
        </div>
    </div>
</nav>

<div class="container py-4">
    <div class="card card-shadow border-0 rounded-4">
        <div class="card-body p-4 p-md-5">

            <h3 class="mb-1">Agregar película</h3>
            <p class="text-secondary mb-4">
                Complete el formulario para registrar una nueva película.
            </p>

            <%
                Object err = request.getAttribute("error");
                if (err != null) {
            %>
                <div class="alert alert-danger">
                    <%= err.toString() %>
                </div>
            <%
                }
            %>

            <form method="post"
                  action="<%= request.getContextPath() %>/peliculas/nuevo"
                  class="row g-3">

                <div class="col-12">
                    <label class="form-label">Título</label>
                    <input type="text" name="titulo"
                           class="form-control form-control-lg"
                           placeholder="Ej: Rápidos al Límite"
                           required>
                </div>

                <div class="col-12">
                    <label class="form-label">Descripción</label>
                    <textarea name="descripcion"
                              class="form-control"
                              rows="3"
                              placeholder="Breve descripción de la película"></textarea>
                </div>

                <div class="col-12 col-md-4">
                    <label class="form-label">Año</label>
                    <input type="number" name="anio"
                           class="form-control"
                           min="1900" max="2100"
                           value="2025"
                           required>
                </div>

                <div class="col-12 col-md-4">
                    <label class="form-label">Duración (minutos)</label>
                    <input type="number" name="duracionMin"
                           class="form-control"
                           min="1"
                           value="90"
                           required>
                </div>

                <div class="col-12 col-md-4">
                    <label class="form-label">Categoría</label>
                    <select name="idCategoria"
                            class="form-select"
                            required>
                        <%
                            List<Categoria> categorias =
                                    (List<Categoria>) request.getAttribute("categorias");
                            if (categorias != null) {
                                for (Categoria c : categorias) {
                        %>
                            <option value="<%= c.getId() %>">
                                <%= c.getNombre() %>
                            </option>
                        <%
                                }
                            }
                        %>
                    </select>
                </div>

                <div class="col-12 d-flex gap-2 mt-3">
                    <button type="submit" class="btn btn-primary btn-lg">
                        Guardar película
                    </button>
                    <a href="<%= request.getContextPath() %>/peliculas"
                       class="btn btn-outline-secondary btn-lg">
                        Cancelar
                    </a>
                </div>
            </form>

        </div>
    </div>
</div>

</body>
</html>
