<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Streaming</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="estilo.css">
</head>
<body>
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-12 col-md-7 col-lg-5">
            <div class="card card-shadow border-0 rounded-4">
                <div class="card-body p-4 p-md-5">
                    <div class="text-center mb-4">
                        <div class="badge text-bg-primary rounded-pill px-3 py-2">Streaming App</div>
                        <h3 class="mt-3 mb-1">Iniciar sesión</h3>
                        <p class="text-secondary mb-0">Ingresa tus credenciales</p>
                    </div>

                    <form method="post" action="login">
                        <div class="mb-3">
                            <label class="form-label">Usuario</label>
                            <input type="text" name="usuario" class="form-control form-control-lg" placeholder="Ej: admin" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Contraseña</label>
                            <input type="password" name="password" class="form-control form-control-lg" placeholder="••••••" required>
                        </div>

                        <%-- Mensaje de error --%>
                        <%
                            Object err = request.getAttribute("error");
                            if (err != null) {
                        %>
                        <div class="alert alert-danger py-2" role="alert">
                            <%= err.toString() %>
                        </div>
                        <%
                            }
                        %>

                        <button type="submit" class="btn btn-primary btn-lg w-100">
                            Ingresar
                        </button>
                    </form>

                    <hr class="my-4">

                    <div class="small text-secondary">
                        <div><strong>Demo:</strong> admin / admin123</div>
                        <div><strong>Demo:</strong> user / 123456</div>
                    </div>
                </div>
            </div>

            <p class="text-center text-secondary small mt-4 mb-0">
                © <%= java.time.Year.now() %> StreamingApp
            </p>
        </div>
    </div>
</div>
</body>
</html>
