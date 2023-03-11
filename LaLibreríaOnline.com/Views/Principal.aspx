﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="LaLibreríaOnline.com.Principal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Página principal</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="Free HTML Templates" name="keywords" />
    <meta content="Free HTML Templates" name="description" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" />

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="../Otros/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../Otros/css/style.css" rel="stylesheet" />

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="../Otros/lib/easing/easing.min.js"></script>
    <script src="../Otros/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="../Otros/mail/jqBootstrapValidation.min.js"></script>
    <script src="../Otros/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="../Otros/js/main.js"></script>

    <!-- Hace que todos los Cards que muestran los libros salgan de la misma altura -->
    <style>
        .card-header.product-img img {
            height: 400px; /*Establecer la altura deseada*/
            object-fit: cover; /*Ajustar la imagen dentro del contenedor*/
        }

        .card.product-item {
            height: 100%; /*Establecer la altura deseada*/
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">
        <div>

            <!-- Topbar Start -->
            <div class="container-fluid">
                <div class="row bg-secondary py-2 px-xl-5">
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-dark" href="">FAQs</a>
                            <span class="text-muted px-2">|</span>
                            <a class="text-dark" href="">Help</a>
                            <span class="text-muted px-2">|</span>
                            <a class="text-dark" href="">Support</a>
                        </div>
                    </div>
                    <div class="col-lg-6 text-center text-lg-right">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-instagram"></i>
                            </a>
                            <a class="text-dark pl-2" href="">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center py-3 px-xl-5">
                    <div class="col-lg-3 d-none d-lg-block">
                        <a href="" class="text-decoration-none">
                            <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">La</span>Libreria</h1>
                        </a>
                    </div>
                    <div class="col-lg-6 col-6 text-left">

                            <div class="input-group">
                                <input id="Input_Busqueda" runat="server" type="text" class="form-control" placeholder="Buscar por ISBN, Autor o Titulo"/>
                                <div class="input-group-append">
                                    <button id="Btn_Busqueda" runat="server" onserverclick="Btn_Busqueda_ServerClick" class="input-group-text bg-transparent text-primary">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                       

                    </div>
                    <div runat="server" id="Favoritos_Carrito" class="col-lg-3 col-6 text-right">
                        <a href="" class="btn border">
                            <i class="fas fa-heart text-primary"></i>
                            <span runat="server" id="spanFavoritos" class="badge"></span>
                        </a>
                        <a href="" class="btn border">
                            <i class="fas fa-shopping-cart text-primary"></i>
                            <span runat="server" id="spanCarrito" class="badge"></span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- Topbar End -->

            <!-- Navbar Start -->
            <div class="container-fluid mb-5">
                <div class="row border-top px-xl-5">
                    <div class="col">
                        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                            <a runat="server" id="Logo" onserverclick="Logo_ServerClick" href="" class="text-decoration-none d-block d-lg-none">
                                <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">La</span>Libreria</h1>
                            </a>
                            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <br />
                            <div runat="server" id="txt_Bienvenido"></div>
                            <br />
                            <div runat="server" class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                <div class="navbar-nav ml-auto py-0">
                                    <a href="Login.aspx" class="nav-item nav-link">Login</a>
                                    <a href="Registro.aspx" class="nav-item nav-link">Registrate</a>
                                </div>
                            </div>
                        </nav>
                        <div id="header-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" style="height: 410px;">
                                    <img class="img-fluid" src="../Imagenes/Carusel%20Lord%20of%20the%20Rings.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h4 class="text-light text-uppercase font-weight-medium mb-3">10% De Descuentos</h4>
                                            <h3 class="display-4 text-white font-weight-semi-bold mb-4">Trilogia El señor de los Anillos</h3>
                                            <a href="" class="btn btn-light py-2 px-3">Compralo Ya</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item" style="height: 410px;">
                                    <img class="img-fluid" src="../Imagenes/Carusel%20Cronicas%20Vampiricas.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Descuento en tu Primera Orden</h4>
                                            <h3 class="display-4 text-white font-weight-semi-bold mb-4">Cronicas Vampiricas - Anne Rice</h3>
                                            <a href="" class="btn btn-light py-2 px-3">Ordenalo Ahora</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                    <span class="carousel-control-prev-icon mb-n2"></span>
                                </div>
                            </a>
                            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                    <span class="carousel-control-next-icon mb-n2"></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Navbar End -->

            <!-- Featured Start -->
            <div class="container-fluid pt-5">
                <div class="row px-xl-5 pb-3">
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">100% Originales</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                            <h5 class="font-weight-semi-bold m-0">Entrega Gratis</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">Garantia</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">Soporte 24/7</h5>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Featured End -->

            <!-- Offer Start -->
            <div class="container-fluid offer pt-5">
                <div class="row px-xl-5">
                    <div class="col-md-6 pb-4">
                        <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                            <img src="https://cdn-icons-png.flaticon.com/512/3504/3504401.png" alt="">
                            <div class="position-relative" style="z-index: 1;">
                                <h5 class="text-uppercase text-primary mb-3">20% En toda la Coleccion</h5>
                                <h1 class="mb-4 font-weight-semi-bold">Cronicas Vampiricas</h1>
                                <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Comprar Ahora</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 pb-4">
                        <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                            <img src="https://cdn-icons-png.flaticon.com/512/1601/1601065.png">
                            <div class="position-relative" style="z-index: 1;">
                                <h5 class="text-uppercase text-primary mb-3">30% En todos los Libros</h5>
                                <h1 class="mb-4 font-weight-semi-bold">Coleccion Harry Potter</h1>
                                <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Comprar Ahora</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer End -->

            <!-- Products Start -->
            <div class="container-fluid pt-5">
                <div class="text-center mb-4">
                    <h2 class="section-title px-5"><span class="px-2">Libros Disponibles</span></h2>
                </div>
                <asp:Repeater ID="Card_Libro" runat="server">
                    <HeaderTemplate>
                        <div class="row px-xl-5 pb-3">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!-- Products Card -->
                        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                            <div class="card product-item border-0 mb-4">
                                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    <img class="img-fluid w-100" src="<%# Eval("foto")%>" alt="">
                                </div>
                                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                    <div class="text-center"><%# Eval("isbn")%></div>
                                    <br />
                                    <h4 class="card-title" style="height: 3em; overflow: hidden; word-wrap: break-word;"><%# Eval("titulo")%></h4>
                                    <h5 class="text-truncate mb-3"><%# Eval("autor")%></h5>
                                    <h6 class="text-truncate mb-3">Publicado el: <%# Eval("fechaPublicacion")%></h6>
                                    <div class="d-flex justify-content-center">
                                        <h6>$<%# Eval("precio")%></h6>
                                    </div>
                                </div>
                                <div runat="server" id="Botones_Libros" class="card-footer d-flex justify-content-between bg-light border">
                                    <a runat="server" id="Agregar_Favorito" href="#" onserverclick="Agregar_Favorito_ServerClick" class="btn btn-sm text-dark p-0" data-isbn='<%# Eval("isbn") %>'><i class="fas fa-heart text-primary mr-1"></i>Favoritos </a>
                                    <a runat="server" id="Agregar_Carrito" href="#" onserverclick="Agregar_Carrito_ServerClick" class="btn btn-sm text-dark p-0" data-isbn='<%# Eval("isbn") %>'><i class="fas fa-shopping-cart text-primary mr-1"></i>Añadir al Carrito </a>
                                </div>
                            </div>
                        </div>
                        <!-- Products Card End-->
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>

            </div>
            <!-- Products End -->

            <!-- Footer Start -->
            <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
                <div class="row px-xl-5 pt-5">
                    <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                        <a href="" class="text-decoration-none">
                            <h1 class="mb-4 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border border-white px-3 mr-1">La</span>Libreria</h1>
                        </a>
                        <p>Tu destino en línea para libros de calidad, conocimiento y entretenimiento. Encuentra los títulos más populares de autores destacados y descubre nuevos mundos a través de la lectura. ¡Compra hoy mismo y vive la experiencia de tener una biblioteca virtual!</p>
                        <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                        <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                        <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                    </div>
                    <div class="col-lg-8 col-md-12">
                        <div class="row">
                            <div class="col-md-4 mb-5">
                                <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                                <div class="d-flex flex-column justify-content-start">
                                    <a class="text-dark mb-2" href="index.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
                                    <a class="text-dark mb-2" href="shop.html"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                    <a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                                    <a class="text-dark mb-2" href="cart.html"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                    <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                                    <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                                </div>
                            </div>
                            <div class="col-md-4 mb-5">
                                <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                                <div class="d-flex flex-column justify-content-start">
                                    <a class="text-dark mb-2" href="index.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
                                    <a class="text-dark mb-2" href="shop.html"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                    <a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                                    <a class="text-dark mb-2" href="cart.html"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                    <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                                    <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                                </div>
                            </div>
                            <div class="col-md-4 mb-5">
                                <h5 class="font-weight-bold text-dark mb-4">Newsletter</h5>
                                <form action="">
                                    <div class="form-group">
                                        <input type="text" class="form-control border-0 py-4" placeholder="Your Name" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control border-0 py-4" placeholder="Your Email"
                                            required="required" />
                                    </div>
                                    <div>
                                        <button class="btn btn-primary btn-block border-0 py-3" type="submit">Subscribe Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row border-top border-light mx-xl-5 py-4">
                    <div class="col-md-6 px-xl-0">
                        <p class="mb-md-0 text-center text-md-left text-dark">
                            &copy; <a class="text-dark font-weight-semi-bold" href="#">Your Site Name</a>. All Rights Reserved. Designed
                    by
                    <a class="text-dark font-weight-semi-bold" href="https://htmlcodex.com">HTML Codex</a>
                        </p>
                    </div>
                    <div class="col-md-6 px-xl-0 text-center text-md-right">
                        <img class="img-fluid" src="img/payments.png" alt="">
                    </div>
                </div>
            </div>
            <!-- Footer End -->

            <!-- Back to Top -->
            <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

        </div>
    </form>

</body>

</html>
