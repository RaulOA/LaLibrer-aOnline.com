<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="LaLibreríaOnline.com.Views.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="h-100">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="../Styles/css/Cover.css" rel="stylesheet" />
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, 0.1);
            border: solid rgba(0, 0, 0, 0.15);
            border-width: 1px 0;
            box-shadow: inset 0 0.5em 1.5em rgba(0, 0, 0, 0.1), inset 0 0.125em 0.5em rgba(0, 0, 0, 0.15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -0.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

            .nav-scroller .nav {
                display: flex;
                flex-wrap: nowrap;
                padding-bottom: 1rem;
                margin-top: -1px;
                overflow-x: auto;
                text-align: center;
                white-space: nowrap;
                -webkit-overflow-scrolling: touch;
            }
    </style>
</head>
<body class="d-flex h-100 text-center text-bg-dark">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
        <header class="mb-auto">
            <div>
                <h3 class="float-md-start mb-0">LaLibreriaOnline.com</h3>
            </div>
        </header>
        <main class="px-3">
            <br />
            <h1>Nueva Cuenta</h1>
            <br />
            <!-- Esta es la parte donde se deben poner los datos -->
            <form id="FormSignIn" runat="server">

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon1">Usuario</span>
                    <input id="InputUser" runat="server" type="text" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="basic-addon1" />
                </div>
                <br />

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon2">Contraseña</span>
                    <input id="InputPass" runat="server" type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon2" />
                </div>
                <br />
                <br />

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon3">Nombre Completo</span> 
                    <input id="InputFullName" runat="server" type="text" class="form-control" placeholder="Full Name" aria-label="Full Name" aria-describedby="basic-addon3" />
                </div>
                <br />

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon4">País</span>
                    <input id="InputCountry" runat="server" type="text" class="form-control" placeholder="Country" aria-label="Country" aria-describedby="basic-addon5" />
                </div>
                <br />

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon5">Provincia</span>
                    <input id="InputProvince" runat="server" type="text" class="form-control" placeholder="Province" aria-label="Province" aria-describedby="basic-addon6" />
                </div>
                <br />

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon6">Dirección</span>
                    <input id="InputAddress" runat="server" type="text" class="form-control" placeholder="Address" aria-label="Address" aria-describedby="basic-addon7" />
                </div>
                <br />


                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon7">Código Postal</span>
                    <input id="InputPostalCode" runat="server" type="number" class="form-control" placeholder="Postal Code" aria-label="Postal Code" aria-describedby="basic-addon8" />
                </div>
                <br />

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon8">Número de Tarjeta</span>
                    <input id="InputCardNumber" runat="server" type="number" class="form-control" placeholder="Card Number" aria-label="Card Number" aria-describedby="basic-addon9" />
                </div>
                <br />

                 <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon9">Expiración</span>
                    <input id="InputExpiration" runat="server" type="date" class="form-control" placeholder="Expiration" aria-label="Expiration" aria-describedby="basic-addon10" />
                </div>
                <br />

                
                 <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;">
                    <span class="input-group-text" id="basic-addon10">Código de seguridad</span>
                    <input id="InputSecurityCode" runat="server" type="number" class="form-control" placeholder="Security Code" aria-label="Security Code" aria-describedby="basic-addon11" />
                </div>
               
                <br />
                <p class="lead">
                    <button id="BtnSignIn" runat="server" onserverclick="BtnSignIn_ServerClick" class="btn btn-primary btn-lg px-4 gap-3">Registrarse</button>
                </p>
            </form>
        </main>
        <footer class="mt-auto text-white-50">
            <p>
                <a href="Login.aspx" class="text-white">Iniciar Sesión</a>
            </p>
        </footer>
    </div>
</body>
</html>
