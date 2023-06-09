﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUsers.aspx.cs" Inherits="StoreApplication.AdminUsers" %>

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
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Sithi Store</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="UserAccounts" runat="server" >Customer Accounts</asp:LinkButton>
                            </li>
                         <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="LinkButton1" runat="server" >Sales Employee Accounts</asp:LinkButton>
                            </li>
                        <li class="nav-item">
                                 <asp:LinkButton CssClass="nav-link active" ID="LogOutAdmin" runat="server" PostBackUrl="~/Default.aspx">Log Out</asp:LinkButton>
                            </li>
                        <li class="nav-item">
                             <asp:LinkButton CssClass="nav-link active" ID="Help" runat="server">Help</asp:LinkButton>
                            </li>
                       
                            </ul>
                       
                 
                </div>
            </div>
        </nav>
            <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">All Accounts</h1>
                   
                </div>
                <div>
            <div class="container px-4 px-lg-5 mt-5">
               <p class="lead fw-normal text-black mb-0">Update User Accounts </p>
                </div>
            <div class="container px-4 px-lg-5 mt-5">
                <asp:DropDownList ID="userID" runat="server" DataSourceID="SqlDataSource1" DataTextField="userId" DataValueField="userId"></asp:DropDownList>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:SalesSubConnectionString %>' SelectCommand="SELECT [userId] FROM [UserTbl] WHERE ([active] = @active)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="No" Name="active" Type="String"></asp:Parameter>
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:Button ID="btuUpdate" CssClass="btn btn-warning" runat="server" Text="Update" OnClick="btuUpdate_Click" />

                <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
            </div>
        </header>
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
