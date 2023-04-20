<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LaLibreríaOnline.com.Views.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../Otros/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../Otros/css/style.css" rel="stylesheet" />

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


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
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <!-- Page Header Start -->
            <div class="container-fluid mb-5" style="background: linear-gradient(to bottom, #f9e9ea, #ffffff);">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 100px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Carrito de Compras</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="Principal.aspx">Pagina Principal</a></p>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <!-- Cart Start -->
            <div class="container-fluid pt-5">
                <div class="row px-xl-5">
                    <div class="col-lg-8 table-responsive mb-5">
                        <table class="table table-bordered text-center mb-0">
                            <thead class="bg-secondary text-dark">
                                <tr>
                                    <th>Foto</th>
                                    <th>Titulo</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Total</th>
                                    <th>Remover</th>
                                </tr>
                            </thead>
                            <tbody class="align-middle">
                                <asp:Repeater ID="rptCartItems" runat="server">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="align-middle">
                                                <img src='<%# Eval("image") %>' alt="" style="width: 50px;">
                                            </td>
                                            <td class="align-middle">
                                                <%# Eval("title") %>
                                            </td>
                                            <td class="align-middle">
                                                <%# String.Format("{0:C}", Eval("price")) %>
                                            </td>
                                            <td class="align-middle">
                                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                                    <div class="input-group-btn">
                                                        <button class="btn btn-sm btn-primary btn-minus" runat="server" id="btnMinusAmount" onserverclick="btnMinusAmount_ServerClick" data-isbn='<%# Eval("isbn") %>' disabled='<%# (Convert.ToInt32(Eval("amount")) <= 1) ? true : false %>'>
                                                            <i class="fa fa-minus"></i>
                                                        </button>
                                                    </div>
                                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value='<%# Eval("amount") %>'>
                                                    <div class="input-group-btn">
                                                        <button class="btn btn-sm btn-primary btn-plus" runat="server" id="btnPlusAmount" onserverclick="btnPlusAmount_ServerClick" data-isbn='<%# Eval("isbn") %>'>
                                                            <i class="fa fa-plus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle">
                                                <%# String.Format("{0:C}", Eval("total")) %>
                                            </td>
                                            <td class="align-middle">
                                                <button class="btn btn-sm btn-primary" runat="server" id="btnRemoveItem" onserverclick="btnRemoveItem_ServerClick" data-isbn='<%# Eval("isbn") %>'><i class="fa fa-times"></i></button>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-lg-4">

                        <div class="card border-secondary mb-5">
                            <div class="card-header bg-secondary border-0">
                                <h4 class="font-weight-semi-bold m-0">Resumen de Compra</h4>
                            </div>
                            <div class="card-body">
                                <div class="d-flex justify-content-between mb-3 pt-1">
                                    <h6 class="font-weight-medium">Subtotal</h6>
                                    <h6 class="font-weight-medium"><%= subTotal.ToString("C") %></h6>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h6 class="font-weight-medium">I.V.A. (13%)</h6>
                                    <h6 class="font-weight-medium"><%= shippingCosts.ToString("C") %></h6>
                                </div>
                            </div>
                            <div class="card-footer border-secondary bg-transparent">
                                <div class="d-flex justify-content-between mt-2">
                                    <h5 class="font-weight-bold">Total</h5>
                                    <h5 class="font-weight-bold"><%= total.ToString("C") %></h5>
                                </div>
                            </div>
                        </div>

                        <div class="card-footer border-secondary bg-transparent">
                            <button class="btn btn-block btn-primary my-3 py-3" runat="server" id="btnCheckout" onserverclick="btnCheckout_ServerClick">Generar Factura</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <!-- Cart End -->
        <!-- Footer Start -->
        <div class="row border-top border-light mx-xl-5 py-4">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-dark">
                    &copy; <a class="text-dark font-weight-semi-bold">LaLibreria.com</a>. Diseño por
                    <a class="text-dark font-weight-semi-bold">Angie Bermudez y Raul Ortega</a>
                </p>
            </div>
            <div class="col-md-6 px-xl-0 text-center text-md-right">
                <img class="img-fluid" src="img/payments.png" alt="">
            </div>
        </div>
        <!-- Footer End -->
        </div>
    </form>
</body>

</html>
