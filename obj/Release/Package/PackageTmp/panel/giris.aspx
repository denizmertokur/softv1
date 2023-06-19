<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="softv1.panel.giris" %>


<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <title>5 Ocak Panel - Giriş</title>
    <link href="~/img/favicon1.png" rel="icon">
    <!-- GLOBAL MAINLY STYLES-->
    <link href="./assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="./assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet" />
    <!-- THEME STYLES-->
    <link href="assets/css/main.css" rel="stylesheet" />
    <!-- PAGE LEVEL STYLES-->
    <link href="./assets/css/pages/auth-light.css" rel="stylesheet" />
</head>

<body class="bg-silver-300">
    <div class="content">
        <div class="brand">
            <a class="link"><strong>5OCAK</strong> Panel</a>
        </div>
        <form runat="server">
            <h2 class="login-title">Yönetici Girişi</h2>
            <div class="form-group">
                <div class="input-group-icon right">
                    <div class="input-icon"><i class="fa fa-user"></i></div>
                    <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" PlaceHolder="Kullanıcı Adı"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group-icon right">
                    <div class="input-icon"><i class="fa fa-lock font-16"></i></div>
                    <asp:TextBox ID="txtParola" runat="server" CssClass="form-control" PlaceHolder="Parola" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="alert alert-info">
                <strong>Bilgilendirme!</strong> Yönetici paneline giriş yapabilmeniz için yetkili kullanıcı adı ve parolaya ihtiyacınız vardır.
            </div>
             <div class="alert alert-danger invisible" id="hatamesaji" runat="server">
                <strong>HATA!</strong> Kullanıcı adı veya parola hatalı.</div>
            <div class="form-group">
                <asp:Button ID="btnGiris" runat="server" Text="Giriş" CssClass="btn btn-success btn-block" OnClick="btnGiris_Click" />
            </div>
        </form>
        <!-- BEGIN PAGA BACKDROPS-->
        <div class="sidenav-backdrop backdrop"></div>
        <div class="preloader-backdrop">
            <div class="page-preloader">Yükleniyor</div>
        </div>
        <!-- END PAGA BACKDROPS-->
        <!-- CORE PLUGINS -->
        <script src="./assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="./assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
        <script src="./assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- PAGE LEVEL PLUGINS -->
        <script src="./assets/vendors/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
        <!-- CORE SCRIPTS-->
        <script src="assets/js/app.js" type="text/javascript"></script>
        <!-- PAGE LEVEL SCRIPTS-->
        <style>
            .invisible {
                display: none;
            }

            .visible {
                display: block;
            }
        </style>
</body>

</html>
