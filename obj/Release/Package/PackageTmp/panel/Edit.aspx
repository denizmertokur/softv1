<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="softv1.panel.Edit" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <title>5 Ocak | Yönetici Paneli</title>
    <link href="img/favicon1.png" rel="icon">
    <!-- GLOBAL MAINLY STYLES-->
    <link href="./assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="./assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet" />
    <!-- PLUGINS STYLES-->
    <link href="./assets/vendors/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
    <!-- THEME STYLES-->
    <link href="assets/css/main.min.css" rel="stylesheet" />
    <!-- PAGE LEVEL STYLES-->
</head>

<body class="fixed-navbar">
    <form runat="server">
    <div class="page-wrapper">
        <!-- START HEADER-->
        <header class="header">
            <div class="page-brand">
                <a class="link" href="anasayfa.aspx">
                    <span class="brand">5
                        <span class="brand-tip">OCAK Panel</span>
                    </span>
                    <span class="brand-mini">5</span>
                </a>
            </div>
            <div class="flexbox flex-1">
                <!-- START TOP-LEFT TOOLBAR-->
                <ul class="nav navbar-toolbar">
                    <li>
                        <a class="nav-link sidebar-toggler js-sidebar-toggler"><i class="ti-menu"></i></a>
                    </li>
                </ul>
                <!-- END TOP-LEFT TOOLBAR-->
                <!-- START TOP-RIGHT TOOLBAR-->
                <ul class="nav navbar-toolbar">
                    <li class="dropdown dropdown-user">
                        <a class="nav-link dropdown-toggle link" data-toggle="dropdown">
                            <img src="./assets/img/admin-avatar.png" />
                            <span></span>
                            <asp:Label ID="lblUsername" runat="server" Text="Admin"></asp:Label><i class="fa fa-angle-down m-l-5"></i></a>
                        <ul class="dropdown-menu dropdown-menu-right">
<asp:LinkButton ID="btnCikis" runat="server"  class="dropdown-item" OnClick="btnCikis_Click"><i class="fa fa-power-off"></i>Çıkış </asp:LinkButton>
                        </ul>
                    </li>
                </ul>
                <!-- END TOP-RIGHT TOOLBAR-->
            </div>
        </header>
        <!-- END HEADER-->
        <!-- START SIDEBAR-->
        <nav class="page-sidebar" id="sidebar">
            <div id="sidebar-collapse">
                <div class="admin-block d-flex">
                    <div>
                        <img src="./assets/img/admin-avatar.png" width="45px" />
                    </div>
                    <div class="admin-info">
                        <div class="font-strong">
                            <asp:Label ID="lblUsername2" runat="server" Text="Admin"></asp:Label></div>
                        <small>Administrator</small>
                    </div>
                </div>
                <ul class="side-menu metismenu">
                    <li>
                        <a href="anasayfa.aspx"><i class="sidebar-item-icon fa fa-th-large"></i>
                            <span class="nav-label">Kontrol Paneli</span>
                        </a>
                    </li>
                    <li class="heading">ÇALIŞMA ALANI</li>
                    <li>
                        <a href="javascript:;"><i class="sidebar-item-icon fa fa-bookmark"></i>
                            <span class="nav-label">Bayi İşlemleri</span><i class="fa fa-angle-left arrow"></i></a>
                        <ul class="nav-2-level collapse">
                            <li>
                                <a href="bayiolustur.aspx">Bayi Oluştur</a>
                            </li>
                            <li>
                                <a href="bayilistesi.aspx">Bayi Listesi</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="mesajlar.aspx"><i class="sidebar-item-icon fa fa-edit"></i>
                            <span class="nav-label">Mesajlar</span></a>
                    </li>
                    <li>
                        <a href="urunyonetimi.aspx"><i class="sidebar-item-icon fa fa-table"></i>
                            <span class="nav-label">Ürünler</span></a>
                    </li>
                    <li class="heading">YÖNETİM</li>
                    <li>
                        <a href="adminekle.aspx"><i class="sidebar-item-icon fa fa-user-o"></i>
                            <span class="nav-label">Kullanıcı Ekle</span></a>
                    </li>
                    <li>
                        <a href="adminler.aspx"><i class="sidebar-item-icon fa fa-user-o"></i>
                            <span class="nav-label">Yetkili Listesi</span></a>
                    </li>
                    <li>
                        <a href="duyurular.aspx"><i class="sidebar-item-icon fa fa-bullhorn"></i>
                            <span class="nav-label">Duyurular</span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- END SIDEBAR-->
        <div class="content-wrapper">
            <!-- START PAGE CONTENT-->
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            
                <div class="page-content fade-in-up">
                    <div class="row">
                        <div class="col">
                            <div class="ibox ibox-warning invisible" id="aduzenle" runat="server">
                                <div class="ibox-head">
                                    <div class="ibox-title">Yetkili Düzenle</div>
                                </div>
                                <div class="ibox-body">
                                    <div class="form-group">
                                        <label>Yetkili ID:</label>
                                        <asp:TextBox ID="txtYetkiliID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Yetkili İsmi</label>
                                        <asp:TextBox ID="txtYetkiliAd" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label>Yetki Seviyesi: (Max:10)</label>
                                            <asp:TextBox ID="txtYetkiliYetki" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <label>Yetkili Pozisyonu</label>
                                            <asp:TextBox ID="txtYetkiliPozisyon" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btnYetkiliKaydet" runat="server" Text="KAYDET" CssClass="btn btn-success btn-block" OnClick="btnYetkiliKaydet_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="ibox ibox-warning invisible" id="mduzenle" runat="server">
                                <div class="ibox-head">
                                    <div class="ibox-title">Mesaj İncele</div>
                                </div>
                                <div class="ibox-body">
                                   <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label>Mesaj ID</label>
                                            <asp:TextBox ID="txtMesajID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <label>Mesaj Tarih</label>
                                            <asp:TextBox ID="txtMesajTarih" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Gönderen:</label>
                                        <asp:TextBox ID="txtMesajGonderen" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label>Mail Adresi:</label>
                                            <asp:TextBox ID="txtMesajMail" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <label>Mesaj Durumu:</label>
                                            <asp:TextBox ID="txtMesajDurum" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Mesaj Konusu:</label>
                                        <asp:TextBox ID="txtMesajKonu" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Mesaj İçeriği:</label>
                                        <asp:TextBox ID="txtMesajİcerik" runat="server" CssClass="form-control" ReadOnly="true" TextMode="MultiLine" Height="100px"></asp:TextBox>
                                    </div>
                                    <div class="form-group">

                                        <asp:Button ID="btnMesajOkundu" runat="server"  Text="OKUNDU OLARAK İŞARETLE" CssClass="btn btn-warning btn-block" OnClick="btnMesajOkundu_Click" />
                                    </div>
                                </div>
                            </div>


                            <div class="ibox ibox-warning invisible" id="bduzenle" runat="server">
                                <div class="ibox-head">
                                    <div class="ibox-title">Bayi Düzenle</div>
                                </div>
                                <div class="ibox-body">
                                    <div class="form-group">
                                        <label>Bayi ID:</label>
                                        <asp:TextBox ID="txtBayiID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Bayi İsmi</label>
                                        <asp:TextBox ID="txtBayiAd" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label>Telefon Numarası:</label>
                                            <asp:TextBox ID="txtBayiTelefon" runat="server" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <label>Şehir</label>
                                            <asp:TextBox ID="txtBayiSehir" runat="server" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Adres</label>
                                        <asp:TextBox ID="txtBayiAdres" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>E-Mail Adresi</label>
                                        <asp:TextBox ID="txtBayiMail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Vergi Numarası:</label>
                                        <asp:TextBox ID="txtBayiVergiNo" runat="server" CssClass="form-control" TextMode="Number"  ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Vergi Adresi:</label>
                                        <asp:TextBox ID="txtBayiVergiAdres" runat="server" CssClass="form-control" TextMode="MultiLine" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Fatura Adresi:</label>
                                        <asp:TextBox ID="txtBayiFaturaAdres" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        
                                        <asp:LinkButton ID="btnBayiKaydet" runat="server" Text="KAYDET" CssClass="btn btn-success btn-block" OnClick="btnBayiKaydet_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="ibox ibox-warning invisible" id="uduzenle" runat="server">
                                <div class="ibox-head">
                                    <div class="ibox-title">Ürün Düzenle</div>
                                </div>
                                <div class="ibox-body">
                                    <div class="form-group">
                                        <label>Urun ID:</label>
                                        <asp:TextBox ID="txtUrunID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Urun İsmi</label>
                                        <asp:TextBox ID="txtUrunAdi" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <label>Tür: (Sos,Şalgam,Meyveli İçecek,Diğer)</label>
                                            <asp:TextBox ID="txtUrunTur" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <label>Ürün Resmi</label>
                                            <asp:TextBox ID="txtUrunURL" runat="server" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Kategori (Ürünler listesinde hangi sekmede gözüksün Örn:1-2-3)</label>
                                        <asp:TextBox ID="txtUrunKategori" runat="server" CssClass="form-control" TextMode="Number" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Ürün Açıklama</label>
                                        <asp:TextBox ID="txtUrunAciklama" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    
                                    <div class="form-group">
                                        <asp:LinkButton ID="btnUrunKaydet" runat="server" Text="KAYDET" CssClass="btn btn-success btn-block" OnClick="btnUrunKaydet_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        
        <!-- END PAGE CONTENT-->
    </div>
    </div>
    <!-- BEGIN THEME CONFIG PANEL-->
    <div class="theme-config">
        <div class="theme-config-toggle"><i class="fa fa-cog theme-config-show"></i><i class="ti-close theme-config-close"></i></div>
        <div class="theme-config-box">
            <div class="text-center font-18 m-b-20">AYARLAR</div>
            <div class="font-strong">ARKAPLAN AYARLARI</div>
            <div class="check-list m-b-20 m-t-10">
                <label class="ui-checkbox ui-checkbox-gray">
                    <input class="js-sidebar-toggler" type="checkbox">
                    <span class="input-span"></span>Menü barını küçült.</label>
            </div>
            <div class="font-strong">ARKAPLAN STİLLERİ</div>
            <div class="m-t-10">
                <label class="ui-radio ui-radio-gray m-r-10">
                    <input type="radio" name="layout-style" value="" checked="">
                    <span class="input-span"></span>Yaslanmış</label>
                <label class="ui-radio ui-radio-gray">
                    <input type="radio" name="layout-style" value="1">
                    <span class="input-span"></span>Kutu</label>
            </div>
            <div class="m-t-10 m-b-10 font-strong">TEMA RENGİ</div>
            <div class="d-flex m-b-20">
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Default">
                    <label>
                        <input type="radio" name="setting-theme" value="default" checked="">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-white"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Blue">
                    <label>
                        <input type="radio" name="setting-theme" value="blue">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-blue"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Green">
                    <label>
                        <input type="radio" name="setting-theme" value="green">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-green"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Purple">
                    <label>
                        <input type="radio" name="setting-theme" value="purple">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-purple"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Orange">
                    <label>
                        <input type="radio" name="setting-theme" value="orange">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-orange"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Pink">
                    <label>
                        <input type="radio" name="setting-theme" value="pink">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-pink"></div>
                        <div class="color-small bg-ebony"></div>
                    </label>
                </div>
            </div>
            <div class="d-flex">
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="White">
                    <label>
                        <input type="radio" name="setting-theme" value="white">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Blue light">
                    <label>
                        <input type="radio" name="setting-theme" value="blue-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-blue"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Green light">
                    <label>
                        <input type="radio" name="setting-theme" value="green-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-green"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Purple light">
                    <label>
                        <input type="radio" name="setting-theme" value="purple-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-purple"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Orange light">
                    <label>
                        <input type="radio" name="setting-theme" value="orange-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-orange"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
                <div class="color-skin-box" data-toggle="tooltip" data-original-title="Pink light">
                    <label>
                        <input type="radio" name="setting-theme" value="pink-light">
                        <span class="color-check-icon"><i class="fa fa-check"></i></span>
                        <div class="color bg-pink"></div>
                        <div class="color-small bg-silver-100"></div>
                    </label>
                </div>
            </div>
        </div>
    </div>
    <!-- END THEME CONFIG PANEL-->
    <!-- BEGIN PAGA BACKDROPS-->
    <div class="sidenav-backdrop backdrop"></div>
    <div class="preloader-backdrop">
        <div class="page-preloader">Yükleniyor</div>
    </div>
    <!-- END PAGA BACKDROPS-->
    <!-- CORE PLUGINS-->
    <script src="./assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="./assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
    <script src="./assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="./assets/vendors/metisMenu/dist/metisMenu.min.js" type="text/javascript"></script>
    <script src="./assets/vendors/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL PLUGINS-->
    <script src="./assets/vendors/chart.js/dist/Chart.min.js" type="text/javascript"></script>
    <script src="./assets/vendors/jvectormap/jquery-jvectormap-2.0.3.min.js" type="text/javascript"></script>
    <script src="./assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <script src="./assets/vendors/jvectormap/jquery-jvectormap-us-aea-en.js" type="text/javascript"></script>
    <!-- CORE SCRIPTS-->
    <script src="assets/js/app.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL SCRIPTS-->
    <script src="./assets/js/scripts/dashboard_1_demo.js" type="text/javascript"></script>
    <style>
        .invisible {
            display: none;
        }

        .visible {
            display: block;
        }
    </style>
        </form>
</body>

</html>
