<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="LaLibreríaOnline.com.Views.Bill" %>

<!DOCTYPE html lang="en">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bill</title>
    <link rel="icon" href="./images/favicon.png" type="image/x-icon" />
    <!-- Customized Bootstrap Stylesheet -->
    <link href="../Otros/css/style.css" rel="stylesheet" />
    <!-- Invoice styling -->
    <style>
        body {
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            text-align: center;
            color: #777;
        }

            body h1 {
                font-weight: 300;
                margin-bottom: 0px;
                padding-bottom: 0px;
                color: #000;
            }

            body h3 {
                font-weight: 300;
                margin-top: 10px;
                margin-bottom: 20px;
                font-style: italic;
                color: #555;
            }

            body a {
                color: #06f;
            }

        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

            .invoice-box table {
                width: 100%;
                line-height: inherit;
                text-align: left;
                border-collapse: collapse;
            }

                .invoice-box table td {
                    padding: 5px;
                    vertical-align: top;
                }

                .invoice-box table tr td:nth-child(2) {
                    text-align: right;
                }

                .invoice-box table tr.top table td {
                    padding-bottom: 20px;
                }

                    .invoice-box table tr.top table td.title {
                        font-size: 45px;
                        line-height: 45px;
                        color: #333;
                    }

                .invoice-box table tr.information table td {
                    padding-bottom: 40px;
                }

                .invoice-box table tr.heading td {
                    background: #eee;
                    border-bottom: 1px solid #ddd;
                    font-weight: bold;
                }

                .invoice-box table tr.details td {
                    padding-bottom: 20px;
                }

                .invoice-box table tr.item td {
                    border-bottom: 1px solid #eee;
                }

                .invoice-box table tr.item.last td {
                    border-bottom: none;
                }

                .invoice-box table tr.total td:nth-child(2) {
                    border-top: 2px solid #eee;
                    font-weight: bold;
                }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Page Header Start -->
            <div class="container-fluid mb-5" style="background: linear-gradient(to bottom, #f9e9ea, #ffffff);">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 100px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Factura</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="Principal.aspx">Pagina Principal</a></p>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->
            <br />
            <div class="invoice-box">
                <table>
                    <tr class="top">
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td class="title">
                                        <a href="" class="text-decoration-none">
                                            <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">La</span>Libreria</h1>
                                        </a>
                                    </td>
                                    <td>Factura #: <%= new Random().Next(10000, 99999) %>
                                        <br />
                                        Fecha: <%= DateTime.Now.ToString() %>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr class="information">
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td><%=UserData[0].email.ToUpper() %>
                                        <br />
                                        C.P. <%= UserData[0].postalCode %>
                                        <br />
                                        <%= UserData[0].address.ToLower() %>
                                        <br />
                                        <%= UserData[0].province.ToUpper() %>, <%= UserData[0].country.ToUpper() %>   
                                    </td>
                                    <td><%= UserData[0].name.ToUpper() %>
                                        <br />
                                        XXXX XXXX XXXX <%= UserData[0].cardNumber.Substring(UserData[0].cardNumber.Length - 4) %>
                                        <br />
                                        Vence: <%= UserData[0].expirationDate %>
                                        <br />
                                        Codigo de Seguridad: <%= UserData[0].securityCode %>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr class="heading">
                        <td>Item</td>

                        <td>Precio</td>
                    </tr>
                    <asp:Repeater ID="rptitems" runat="server">
                        <ItemTemplate>
                            <tr class="item">
                                <td>(x<%# Eval("amount") %>) <%# Eval("title") %> </td>

                                <td><%# string.Format("{0:C}", double.Parse(Eval("amount").ToString()) * double.Parse(Eval("price").ToString())) %></td>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                    <tr class="item">
                        <td>Subtotal</td>

                        <td><%= subTotal.ToString("C") %></td>
                    </tr>

                    <tr class="item last">
                        <td>I.V.A. (13%)</td>

                        <td><%= shippingCosts.ToString("C") %></td>
                    </tr>

                    <tr class="total">
                        <td></td>

                        <td>Total: <%= total.ToString("C") %></td>
                    </tr>
                </table>
            </div>
        </div>
        <br />
        <div >
        <asp:Button class="btn btn-block btn-primary my-6 py-6" style="width: auto; display: block; margin: 0 auto; padding: 0.5rem 1.5rem; font-size: 1rem;" ID="btnPrint" runat="server" Text="Imprimir" OnClientClick="window.print(); return false;" />
        </div>
    </form>
</body>
</html>
