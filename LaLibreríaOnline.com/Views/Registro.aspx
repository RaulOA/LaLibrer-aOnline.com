<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="LaLibreríaOnline.com.Views.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="h-100">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="../Styles/Registro.css" rel="stylesheet" />

</head>
<body class="d-flex h-100 text-center text-bg-dark" style="background-color: #CD5C5C;">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column" style="background-color: #E9BBAB;">
        <header class="mb-auto" style="background-color: #E9BBAB;">
            <div>
                <img src="https://cdn-icons-png.flaticon.com/512/2421/2421033.png" alt="Icono Libreria" style="float: left; width: 70px; margin-left: 30px;" onmouseover="this.style.transform='scale(1.5)'" onmouseout="this.style.transform='scale(1.2)'"/>
                <h3 class="float-md-start mb-0" style="margin-left: 18px; margin-top: 15px;">LaLibreriaOnline.com</h3>
            </div>
        </header>
        <main class="px-3" style="background-color: #E9BBAB;">
            <h1>Nueva Cuenta</h1>
            <!-- Esta es la parte donde se deben poner los datos -->

            <img src="https://cdn-icons-png.flaticon.com/512/72/72648.png" alt="Icono Persona" style="float: left; margin-left: 25px; margin-top: 25px; width: 120px;" onmouseover="this.style.transform='scale(1.2)'" onmouseout="this.style.transform='scale(1)'"/>

            <form id="FormSignIn" runat="server" style="background-color: white; border: 0.5px solid #808080; max-height: 420px;">

               
                <br/>
                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-left: 170px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon1">Usuario</span>
                    <input id="InputUser" runat="server" type="text" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="basic-addon1" />
                </div>
               
                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-left: 170px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon2">Contraseña</span>
                    <input id="InputPass" runat="server" type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon2" />
                </div>

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;  margin-left: 170px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon3">Nombre Completo</span> 
                    <input id="InputFullName" runat="server" type="text" class="form-control" placeholder="Full Name" aria-label="Full Name" aria-describedby="basic-addon3" />
                </div>

               <img src="https://cdn-icons-png.flaticon.com/512/5774/5774554.png" alt="Icono Direccion" style="float: right; width: 120px; margin-right: 25px; margin-top: -150px" onmouseover="this.style.transform='scale(1.2)'" onmouseout="this.style.transform='scale(1)'"/>


                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-right: 150px; margin-top: -160px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon4">País</span>
                    <input id="InputCountry" runat="server" type="text" class="form-control" placeholder="Country" aria-label="Country" aria-describedby="basic-addon5" />
                </div>

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-right: 150px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon5">Provincia</span>
                    <input id="InputProvince" runat="server" type="text" class="form-control" placeholder="Province" aria-label="Province" aria-describedby="basic-addon6" />
                </div>

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-right: 150px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon6">Dirección</span>
                    <input id="InputAddress" runat="server" type="text" class="form-control" placeholder="Address" aria-label="Address" aria-describedby="basic-addon7" />
                </div>

                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px;  margin-right: 150px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon7">Código Postal</span>
                    <input id="InputPostalCode" runat="server" type="number" class="form-control" placeholder="Postal Code" aria-label="Postal Code" aria-describedby="basic-addon8" />
                </div>
                <br />

               <img src="https://static.vecteezy.com/system/resources/thumbnails/000/357/048/small/3__2821_29.jpg" alt="Icono Direccion" style="float: left; width: 140px; margin-left: 25px; margin-top: -25px" onmouseover="this.style.transform='scale(1.2)'" onmouseout="this.style.transform='scale(1)'"/>


                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-left: 170px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon8">Número de Tarjeta</span>
                    <input id="InputCardNumber" runat="server" type="number" class="form-control" placeholder="Card Number" aria-label="Card Number" aria-describedby="basic-addon9" />
                </div>

                 <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-top: -8px; margin-left: 170px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon9">Expiración</span>
                    <input id="InputExpiration" runat="server" type="text" class="form-control" placeholder="Expiration" aria-label="Expiration" aria-describedby="basic-addon10" />
                </div>
           
                 <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-left: 170px; font-family: Georgia; font-size: 18px; font-weight: bold;"> 
                    <span class="input-group-text" id="basic-addon10"">Código de seguridad</span>
                    <input id="InputSecurityCode" runat="server" type="number" class="form-control" placeholder="Security Code" aria-label="Security Code" aria-describedby="basic-addon11" />
                </div>
                <p class="lead">
                    <button id="BtnSignIn" runat="server" onserverclick="BtnSignIn_ServerClick" class="btn btn-primary btn-lg px-4 gap-3" style="background-color: #A9A9A9; border: 1px dotted #333333; color: #000000; font-family: Georgia; font-size: 18px; position: relative; top: -120px; left: 200px;">Registrarse</button>
                </p>
            </form>
        </main>
        <footer class="mt-auto text-white-50" style="background-color: #E9BBAB;">
            <p>
                <a href="Login.aspx" class="text-black" style="position: relative; top: -115px; left: 405px; font-family: Georgia; font-size: 18px;">Iniciar Sesión</a>
            </p>
        </footer>
    </div>
</body>
</html>
