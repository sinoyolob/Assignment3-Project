<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterCust.aspx.cs" Inherits="StoreApplication.RegisterCust" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sithi Store Shopping</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
         <%--Botstrap theme for randoms--%>
         <link href="bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Sithi Store</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="Register" runat="server">Register</asp:LinkButton>
                            </li>
                        <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="LogIn" runat="server" >Log In</asp:LinkButton>
                            </li>
                        <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="Help" runat="server">Help</asp:LinkButton>
                            </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop List</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li class="dropdown-item">
                             <asp:LinkButton CssClass="nav-link active" ID="AllProducts" runat="server">All Products</asp:LinkButton>
                            </li>
                                <li><hr class="dropdown-divider" /></li>
                                <li class="dropdown-item">
                             <asp:LinkButton CssClass="nav-link active" ID="NewArrivals" runat="server">New Arrivals</asp:LinkButton>
                            </li>
                                <li><hr class="dropdown-divider" /></li>
                                <li class="dropdown-item">
                             <asp:LinkButton CssClass="nav-link active" ID="PhasingOut" runat="server">Phasing Out</asp:LinkButton>
                            </li>
                                
                            </ul>
                        </li>
                    </ul>
                   <%-- <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>--%>
                </div>
            </div>
        </nav>
    <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Register as a Customer</h1>
                   
                </div>
            </div>
        </header>
        <br /><br />
   <div>
      <%-- Notification--%>
       <div id="noti" class="alert alert-primary" role="alert" runat="server">
           Account created successfully
       </div>
       <asp:Label ID="lblMessage" runat="server" Text=" "></asp:Label>
   </div>

        <div>
           <%-- Page Content--%>
            <div class="container px-4 px-lg-5 mt-5">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Sinoyolo" runat="server"></asp:TextBox>
                 </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Booi" runat="server"></asp:TextBox>
                 </div>
                 <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="sino@gmail.com" runat="server"></asp:TextBox>
                 </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Physical Address"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="23 Kirkwood Street" runat="server"></asp:TextBox>
                 </div>
                <br />
                <br />
                 <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="**********" runat="server" TextMode="Password"></asp:TextBox>
                 </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="**********" runat="server" TextMode="Password"></asp:TextBox>
                 </div>

                <div class="form-group">
                     <asp:Button CssClass="btn btn-danger" ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>




            </div>
        </div>
    </form>
     <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Sithi Store created by Sinoyolo and Lithi</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    
</body>
</html>
