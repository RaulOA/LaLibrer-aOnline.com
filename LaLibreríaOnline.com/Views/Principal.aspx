<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="LaLibreríaOnline.com.Principal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página principal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="../Styles/css/Principal.css" rel="stylesheet"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/product/"/>

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
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
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

<body>



    <!-- Pruebas de Clase -->

    <!-- 
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="testLabel" runat="server">Hello</asp:Label>
            <hr />
            <asp:Button CssClass="btn btn-primary" ID="testbtn1" Text="Cambiar" runat="server" OnClick="testbtn1_Click" />
            <hr />
            <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Costa Rica" />
                <asp:ListItem Text="Panama" />
            </asp:DropDownList>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Dropdown button
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
            </div>
        </div>
    </form>
    -->
    <!-- Plantilla Boostrap-->

    <header class="site-header sticky-top py-1">
        <nav class="container d-flex flex-column flex-md-row
        justify-content-between">
            <a class="py-2" href="#" aria-label="Product">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                    fill="none" stroke="currentColor" stroke-linecap="round"
                    stroke-linejoin="round" stroke-width="2" class="d-block mx-auto"
                    role="img" viewBox="0 0 24 24">
                    <title>Libreria Internacional</title>
                 <%--   <circle cx="12"
                        cy="12" r="10" />
                    <path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38
                12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74
                9.94" />--%>
                </svg>
            </a>
            <a class="py-2 d-none d-md-inline-block" href="#">Bienvenidos a Libreria Internacional</a>
            <a class="py-2 d-none d-md-inline-block" href="#">Carrito de compra</a>
            <a class="py-2 d-none d-md-inline-block" href="#">Perfil</a>
            <a class="py-2 d-none d-md-inline-block" href="#">Salir</a>

        </nav>
    </header>

    <main>
        <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3
            text-center bg-light">
            <div class="col-md-5 p-lg-5 mx-auto my-5">
                <img src ="data:image/png;base64,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"/>
                <br/>
                <br/>
                <%-- <h1 class="display-4 fw-normal">Libreria Internacional</h1>--%>
                <p class="lead fw-normal">  
                    Comprá con nosotros, somos tu mejor opción!        
                </p> 
              <%--  <a class="btn btn-outline-secondary" href="#">Coming soon</a>--%>
            </div>
            <div class="product-device shadow-sm d-none d-md-block"></div>
            <div class="product-device product-device-2 shadow-sm d-none
              d-md-block">
            </div>
        </div>

        <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
            <div class="text-bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5
              text-center overflow-hidden">
                <div class="my-3 py-3">
                    <h2 class="display-5">Libros disponibles</h2>
                    <p class="lead">Libro x</p>
                </div>
                <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                </div>
            </div>
           <%-- <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center
              overflow-hidden">
                <div class="my-3 p-3">
                    <h2 class="display-5">Another headline</h2>
                    <p class="lead">And an even wittier subheading.</p>
                </div>
                <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                </div>
            </div>
        </div>--%>

      <%--  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
            <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center
              overflow-hidden">
                <div class="my-3 p-3">
                    <h2 class="display-5">Another headline</h2>
                    <p class="lead">And an even wittier subheading.</p>
                </div>
                <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                </div>
            </div>--%>
          <%--  <div class="text-bg-primary me-md-3 pt-3 px-3 pt-md-5 px-md-5
              text-center overflow-hidden">
                <div class="my-3 py-3">
                    <h2 class="display-5">Another headline</h2>
                    <p class="lead">And an even wittier subheading.</p>
                </div>
                <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                </div>
            </div>
        </div>--%>

      <%--  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
            <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center
              overflow-hidden">
                <div class="my-3 p-3">
                    <h2 class="display-5">Another headline</h2>
                    <p class="lead">And an even wittier subheading.</p>
                </div>
                <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                </div>
            </div>--%>
          <%--  <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center
              overflow-hidden">
                <div class="my-3 py-3">
                    <h2 class="display-5">Another headline</h2>
                    <p class="lead">And an even wittier subheading.</p>
                </div>
                <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                </div>
            </div>
        </div>--%>

        <%--<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
            <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center
              overflow-hidden">
                <div class="my-3 p-3">
                    <h2 class="display-5">Another headline</h2>
                    <p class="lead">And an even wittier subheading.</p>
                </div>
                <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
                </div>
            </div>--%>
           <%-- <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center
              overflow-hidden">
                <div class="my-3 py-3">
                    <h2 class="display-5">Another headline</h2>
                    <p class="lead">And an even wittier subheading.</p>
                </div>
                <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
          <%--      </div>--%>
         <%--   </div>--%>
        </div>
    </main>

    <footer class="container py-5">
        <div class="row">
            <div class="col-12 col-md">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                    fill="none" stroke="currentColor" stroke-linecap="round"
                    stroke-linejoin="round" stroke-width="2" class="d-block mb-2"
                    role="img" viewBox="0 0 24 24">
                    <title>Product</title>
                    <%--<circle
                        cx="12" cy="12" r="10" />
                    <path d="M14.31 8l5.74 9.94M9.69
                    8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31
                    16H2.83m13.79-4l-5.74 9.94" />--%>
                </svg>
                <small class="d-block mb-3 text-muted">&copy; ¡Gracias por preferirnos!</small>
            </div>
           <%-- <div class="col-6 col-md">
                <h5>Features</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="link-secondary" href="#">Cool stuff</a></li>
                    <li><a class="link-secondary" href="#">Random feature</a></li>
                    <li><a class="link-secondary" href="#">Team feature</a></li>
                    <li><a class="link-secondary" href="#">Stuff for developers</a></li>
                    <li><a class="link-secondary" href="#">Another one</a></li>
                    <li><a class="link-secondary" href="#">Last time</a></li>
                </ul>
            </div>--%>
        </div>
    </footer>

</body>

</html>
