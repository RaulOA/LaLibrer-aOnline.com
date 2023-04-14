<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LaLibreríaOnline.com.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="h-100">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="../Styles/css/Login.css" rel="stylesheet" />

</head>
<body class="d-flex h-100 text-center text-dark">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column" style="background-color: #F7EEEA;">
        <header class="mb-auto" style="background-color: white;">
            <div>
               <img src="https://cdn-icons-png.flaticon.com/512/2421/2421033.png" alt="Icono Libreria" style="float: left; width: 70px; margin-left: 30px;" onmouseover="this.style.transform='scale(1.5)'" onmouseout="this.style.transform='scale(1.2)'"/>

                <h3 class="float-md-start mb-0"  style="margin-left: 18px; margin-top: 15px;">LaLibreriaOnline.com</h3>
            </div>
        </header>
        <main class="px-3">
            <h1>Inicia Sesión</h1>
            <br />
            <!-- Esta es la parte donde se debe poner un nombre y una contraseña -->

            <form id="FormLogin" runat="server" style="background-color: #E9BBAB; border: 0.5px solid #808080; max-height: 1200px; max-width: 800px; margin-left: 220px;">

                <img src="https://p.kindpng.com/picc/s/20-203381_sign-up-icon-png-login-and-signup-icon.png" alt="Icono Usuario" style="float: left; margin-left: 160px; margin-top: 40px; width: 60px;" onmouseover="this.style.transform='scale(1.2)'" onmouseout="this.style.transform='scale(1)'" />
                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-top: 47px; margin-left: 260px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon1">Usuario</span>
                    <input id="InputUser" runat="server" type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" />
                </div>
                <br />
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6usoBBqCD54H0TowUwPvr1_MO8OzfpaKW7A&usqp=CAU" alt="Icono Contraseña" style="float: left; margin-left: 160px; margin-top: 40px; width: 60px;" onmouseover="this.style.transform='scale(1.2)'" onmouseout="this.style.transform='scale(1)'" />
                <div class="input-group mb-3" style="max-width: 400px; margin: 0 auto; padding: 0 10px; margin-top: 55px; margin-left: 260px; font-family: Georgia; font-size: 18px;">
                    <span class="input-group-text" id="basic-addon2">Contraseña</span>
                    <input id="InputPass" runat="server" type="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon2" />
                </div>
                <br />
                <p class="lead">
                    <br />
                    <button id="BtnLogin" runat="server" onserverclick="BtnLogin_ServerClick" class="btn btn-primary btn-lg px-4 gap-3" style="background-color: #A9A9A9; border: 1px dotted #333333; color: #000000; font-family: Georgia; font-size: 18px; position: relative; top: -25px; left: 10px;">Ingresar</button>
                </p>
            </form>
        </main>
        <footer class="mt-auto text-white-50">
            <p>
                <br />
                <a href="Registro.aspx" class="text-black" style="position: relative; top: -80px; right: 20px; font-family: Georgia; font-size: 18px;">Crear nueva Cuenta</a>
            </p>
        </footer>
    </div>
</body>
</html>
