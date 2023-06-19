<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="urunler.aspx.cs" Inherits="softv1.items" %>

<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <title>5 Ocak - Senin Markan Senin Seçimin</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon1.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Yükleniyor...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar & Hero Start -->
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
                        <a href="urunler.aspx" class="nav-item nav-link active ">Ürünler</a>
                        <!-- <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Sayfalar</a>
                            <div class="dropdown-menu m-0">
                                <a href="booking.html" class="dropdown-item">Booking</a>
                                <a href="team.html" class="dropdown-item">Our Team</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            </div>
                        </div> -->
                        <a href="iletisim.aspx" class="nav-item nav-link">iletisim</a>
                    </div>
                    <a href="https://www.trendyol.com/magaza/bes-ocak-salgam-m-401798?sst=0" class="btn btn-primary py-2 px-4">SATIN AL</a>
                </div>
            </nav>

            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">ÜRÜNLER</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="#">ANASAYFA</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">ÜRÜNLER</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Menu Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-primary fw-normal">KATALOG</h5>
                    <h1 class="mb-5">Ürünlerimiz</h1>
                </div>
                <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill" href="#tab-1">
                                <i class="fa fa-star fa-2x text-danger"></i>
                                <div class="ps-3">
                                    <small class="text-body"></small>
                                    <h6 class="mt-n1 mb-0">En Popüler Ürünler</h6>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 pb-3" data-bs-toggle="pill" href="#tab-2">
                                <i class="fa fa-wine-bottle fa-2x text-danger"></i>
                                <div class="ps-3">
                                    <small class="text-body"></small>
                                    <h6 class="mt-n1 mb-0">Şalgam ve Meyveli İçecekler</h6>
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 me-0 pb-3" data-bs-toggle="pill" href="#tab-3">
                                <i class="fa fa-utensils fa-2x text-danger"></i>
                                <div class="ps-3">
                                    <small class="text-body"></small>
                                    <h6 class="mt-n1 mb-0">Sos ve Sirkeler</h6>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <small class="fst-italic">Ürünlerimiz sadece 1 Litrelik olanları gösterilmektedir. Ürünlerimizin 300ml, 1L, 3L,5L'lik ebatları bulunamktadır.</small>
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <asp:DataList ID="DataTab1" runat="server">
                                    <ItemTemplate>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="<%# Eval("urun_resim") %>" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span><%# Eval("urun_adi") %></span>
                                            </h5>
                                            <small class="fst-italic"><%# Eval("urun_aciklama") %></small>
                                        </div>
                                    </div>
                                </div>
                                </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>

                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">

                                <asp:DataList ID="DataTab2" runat="server">
                                    <ItemTemplate>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="<%# Eval("urun_resim") %>" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span><%# Eval("urun_adi") %></span>
                                            </h5>
                                            <small class="fst-italic"><%# Eval("urun_aciklama") %></small>
                                        </div>
                                    </div>
                                </div>
                                </ItemTemplate>
                                </asp:DataList>
                                
                            </div>
                        </div>

                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <asp:DataList ID="DataTab3" runat="server">
                                    <ItemTemplate>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="<%# Eval("urun_resim") %>" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span><%# Eval("urun_adi") %></span>
                                            </h5>
                                            <small class="fst-italic"><%# Eval("urun_aciklama") %></small>
                                        </div>
                                    </div>
                                </div>
                                </ItemTemplate>
                                </asp:DataList>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Menu End -->
        

        <!-- Footer Start -->
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
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
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

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
