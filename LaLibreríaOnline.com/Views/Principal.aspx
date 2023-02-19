<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="LaLibreríaOnline.com.Principal" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
   <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400" />
    <link href="../Styles/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Styles/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Styles/css/tooplate-style.css" rel="stylesheet" />
    <script src="../Styles/js/jquery-1.11.3.min.js"></script>
    <script src="../Styles/js/popper.min.js"></script>
    <script src="../Styles/js/bootstrap.min.js"></script>

</head>

<body>

    <!-- Pruebas de Clase-->

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

    <div class="container">
    <header class="tm-site-header">
        <h1 class="tm-site-name">Shelf</h1>
        <p class="tm-site-description">Your Online Bookstore</p>
        <nav class="navbar navbar-expand-md tm-main-nav-container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tmMainNav" aria-controls="tmMainNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse tm-main-nav" id="tmMainNav">
                <ul class="nav nav-fill tm-main-nav-ul">
                    <li class="nav-item"><a class="nav-link active" href="Principal.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Catalogs</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Awards</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Our Team</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="tm-main-content">
        <section class="tm-margin-b-l">
            <header>
                <h2 class="tm-main-title">Welcome to our bookstore</h2>
            </header>
            <p>
                Shelf HTML template is provided by Tooplate. Please tell your friends about it. Thank you. Images are from Unsplash website. In tincidunt metus sed justo tincidunt sollicitudin. Curabitur magna tellus, condimentum vitae
                consectetur id, elementum sit amet erat.
            </p>
            <div class="tm-gallery">
                <div class="row">
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles/img/image-01.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">Nam vitae odio</p>
                        </a>
                    </figure>
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles\img\image-02.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">Integer ornare</p>
                        </a>
                    </figure>
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles\img\image-03.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">Cras non augue</p>
                        </a>
                    </figure>
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles\img\image-04.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">Dolor lacus</p>
                        </a>
                    </figure>
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles\img\image-05.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">Quisque velit</p>
                        </a>
                    </figure>
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles\img\image-06.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">
                                Suspendisse suscipit
                            </p>
                        </a>
                    </figure>
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles\img\image-07.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">Facilisis justo</p>
                        </a>
                    </figure>
                    <figure class="col-lg-3 col-md-4 col-sm-6 col-12 tm-gallery-item">
                        <a href="#">
                            <div class="tm-gallery-item-overlay">
                                <img src="../Styles\img\image-08.jpg" alt="Image" class="img-fluid tm-img-center" />
                            </div>
                            <p class="tm-figcaption">Vivamus facilisis</p>
                        </a>
                    </figure>
                </div>
            </div>
            <nav class="tm-gallery-nav">
                <ul class="nav justify-content-center">
                    <li class="nav-item"><a class="nav-link active" href="#">1</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">2</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">3</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">4</a></li>
                </ul>
            </nav>
        </section>
        <section class="media tm-highlight tm-highlight-w-icon">
            <div class="tm-highlight-icon">
                <i class="fa tm-fa-6x fa-meetup"></i>
            </div>
            <div class="media-body">
                <header>
                    <h2>Need Help?</h2>
                </header>
                <p class="tm-margin-b">
                    Curabitur magna tellus, condimentum vitae consectetur id, elementum sit amet erat. Phasellus arcu leo, sagittis fringilla nisi et, pulvinar vestibulum mi. Maecenas mollis ullamcorper est at dignissim.
                </p>
                <a id="btnHelp" runat="server" onserverclick="btnHelp_ServerClick" href="#" class="tm-white-bordered-btn">Live Chat</a>
            </div>
        </section>
    </div>
    <footer>Copyright &copy; <span class="tm-current-year">2018</span> Shelf Company - Designed by Tooplate</footer>
</div>


</body>

</html>
