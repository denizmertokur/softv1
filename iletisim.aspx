<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="softv1.iletisim" %>

<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <title>5 Ocak - Senin Markan Senin Seçimin</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <link href="img/favicon1.png" rel="icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap"
        rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Yükleniyor...</span>
            </div>
        </div>
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0">
                <a href="" class="navbar-brand p-0">
                    <img src="img/logo-white.png" alt="Logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0 pe-4">
                        <a href="index.aspx" class="nav-item nav-link">Anasayfa</a>
                        <a href="hakkimizda.aspx" class="nav-item nav-link">Hakkımızda</a>
                        <a href="urunler.aspx" class="nav-item nav-link">Ürünler</a>
                        <a href="iletisim.aspx" class="nav-item nav-link active">iletisim</a>
                    </div>
                    <a href="https://www.trendyol.com/magaza/bes-ocak-salgam-m-401798?sst=0" class="btn btn-primary py-2 px-4">SATIN AL</a>
                </div>
            </nav>

            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">İLETİŞİM</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="#">ANASAYFA</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">İLETİŞİM</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-primary fw-normal">İLETİŞİM</h5>
                    <h1 class="mb-5">Görüş, öneri, şikayet ve firmamızla ilgili her konuda bizimle iletişim kurabilirsiniz.</h1>
                </div>
                <div class="row g-4">
                    <div class="col-12">
                        <div class="row gy-4">
                            <div class="col-md-4">
                                <h5 class="section-title ff-secondary fw-normal text-start text-primary">Muhasebe</h5>
                                <p><i class="fa fa-envelope-open text-primary me-2"></i>muhasebe@besocaksalgam.com</p>
                            </div>
                            <div class="col-md-4">
                                <h5 class="section-title ff-secondary fw-normal text-start text-primary">Genel</h5>
                                <p><i class="fa fa-envelope-open text-primary me-2"></i>info@besocaksalgam.com</p>
                            </div>
                            <div class="col-md-4">
                                <h5 class="section-title ff-secondary fw-normal text-start text-primary">Telefon</h5>
                                <p><i class="fa fa-envelope-open text-primary me-2"></i>+90 501 421 2099</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.1s">
                        <iframe class="position-relative rounded w-100 h-100"
                            src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d563.404624267199!2d35.625240327853724!3d36.98359764957935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1str!2str!4v1683375194879!5m2!1str!2str"
                            frameborder="0" style="min-height: 350px; border:0;" allowfullscreen="" aria-hidden="false"
                            tabindex="0"></iframe>
                    </div>
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form runat="server">
                                <div class="row g-3">
                                    <div class="form-floating">
                                        <asp:Label ID="lblUyari" runat="server" ForeColor="#CC0000"></asp:Label></div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeHolder="Adınız"></asp:TextBox>
                                            <label for="name">Adınız</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtMail" CssClass="form-control" runat="server" placeHolder="Mail Adresiniz" TextMode="Email"></asp:TextBox>
                                            <label for="email">Mail Adresiniz</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" placeHolder="Başlık"></asp:TextBox>
                                            <label for="subject">Başlık</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="txtMesaj" CssClass="form-control" runat="server" placeHolder="Mesajınız" TextMode="MultiLine"></asp:TextBox>
                                            <label for="message">Mesajınız</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <asp:Button ID="btnMesajGonder" CssClass="btn btn-primary w-100 py-3" runat="server" Text="Mesaj Gönder" UseSubmitBehavior="True" OnClick="btnMesajGonder_Click" />
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">Kurumsal</h4>
                        <a class="btn btn-link" href="/hakkimizda.aspx">Hakkımızda</a>
                        <a class="btn btn-link" href="/iletisim.aspx">İletisim</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">İletişim</h4>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Adana Hacı Sabancı Organize Sanayi Bölgesi, Sarıçam/Adana</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+90 501 241 20 99</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@besocaksalgam.com</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">Çalışma Saatleri</h4>
                        <h5 class="text-light fw-normal">Hafta İçi</h5>
                        <p>08:00 - 17:00</p>
                        <h5 class="text-light fw-normal">Hafta Sonu (Cumartesi)</h5>
                        <p>08:00 - 12:00</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">Yararlı Bağlantılar</h4>
                        <a class="btn btn-link" href="/hakkimizda.aspx">Yönetici Paneli</a>
                        <a class="btn btn-link" href="/iletisim.aspx">İş Başvurusu</a>
                        <a class="btn btn-link" href="/iletisim.aspx">Bayi Başvurusu</a>
                    </div>
                </div>
            </div>
    </div>
    </form>
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>