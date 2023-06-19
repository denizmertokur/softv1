<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eski.aspx.cs" Inherits="softv1.urunler" %>

<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="utf-8">
    <title>5 Ocak - Senin Markan Senin Seçimin</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

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
                        <a href="anasayfa.aspx" class="nav-item nav-link">Anasayfa</a>
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
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menusalgam.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Şalgam Suyu</span>
                                            </h5>
                                            <small class="fst-italic"> Acılı ve sade çeşitleriyle Adana yöresine özgü lezzet Şalgam Suyu, kendine has keskin aroması ve ferahlatıcı etkisiyle damaklarınızda unutulmaz bir tat bırakırken, sağlığınız için de harika bir seçenek olacak.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menulimonata.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Limonata</span>
                                                
                                            </h5>
                                            <small class="fst-italic">Dünyanın severek içtiği 
                                                Limonata, limon aroması ve taze ferahlığıyla yazın sıcak günlerinde içinizi serinletecek, lezzeti ve vitaminleriyle de sizi cezbedecek.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menuvisnet.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Vişne 
                                                
                                            </h5>
                                            <small class="fst-italic">Vişne aromalı içeceğimiz, yoğun ve ferahlatıcı tadıyla kendinizi hemen yazın ortasında serinletmiş gibi hissettirecek, aynı zamanda zengin vitaminleriyle de sağlığınıza katkıda bulunacak. </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menukaradut.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Karadut 
                                                
                                            </h5>
                                            <small class="fst-italic">Karadut aromalı içeceğimiz, tatlı ve yoğun aromasıyla sizi hemen şehir karmaşasından uzak doğanın ortasına götürecek ve ayrıca yüksek antioksidan içeriğiyle de sağlığınıza katkı sağlayacak.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menunarsosu-1lt.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Nar Sosu</span>
                                                
                                            </h5>
                                            <small class="fst-italic">Nar sosu, yemeklerinize ve salatalarınıza sıradışı bir aroma ve lezzet katıyor.</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="tab-2" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menusalgam.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Şalgam Suyu</span>
                                            </h5>
                                            <small class="fst-italic"> Acılı ve sade çeşitleriyle Adana yöresine özgü lezzet Şalgam Suyu, kendine has keskin aroması ve ferahlatıcı etkisiyle damaklarınızda unutulmaz bir tat bırakırken, sağlığınız için de harika bir seçenek olacak.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menulimonata.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Limonata</span>
                                                
                                            </h5>
                                            <small class="fst-italic">Dünyanın severek içtiği 
                                                Limonata, limon aroması ve taze ferahlığıyla yazın sıcak günlerinde içinizi serinletecek, lezzeti ve vitaminleriyle de sizi cezbedecek.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menuvisnet.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Vişne 
                                                
                                            </h5>
                                            <small class="fst-italic">Vişne aromalı içeceğimiz, yoğun ve ferahlatıcı tadıyla kendinizi hemen yazın ortasında serinletmiş gibi hissettirecek, aynı zamanda zengin vitaminleriyle de sağlığınıza katkıda bulunacak. </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menukaradut.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Karadut 
                                                
                                            </h5>
                                            <small class="fst-italic">Karadut aromalı içeceğimiz, tatlı ve yoğun aromasıyla sizi hemen şehir karmaşasından uzak doğanın ortasına götürecek ve ayrıca yüksek antioksidan içeriğiyle de sağlığınıza katkı sağlayacak.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menucilek.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Çilek 
                                                
                                            </h5>
                                            <small class="fst-italic">Çilek aromalı içeceğimiz, taze ve meyvemsi tadıyla size hemen baharın ortasında piknik yaparkenki hissiyatı yaşatacak ve yüksek C vitamini içeriğiyle de bağışıklık sisteminizi güçlendirecek.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menukayısı.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Kayısı 
                                                
                                            </h5>
                                            <small class="fst-italic">Kayısının tatlılığıyla mest eden kayısılı içecek. Bu serinletici içeceğin tatlı ve yumuşak kayısı aroması, sıcak yaz günlerinde serinlemek için mükemmel bir seçim.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menuportakal.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Portakal </span>
                                                
                                            </h5>
                                            <small class="fst-italic">Her yudumda size taze sıkılmış portakal suyu tadını sunarak enerjinizi yükseltecek!</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menuseftali.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Seftali 
                                                
                                            </h5>
                                            <small class="fst-italic">Şeftalinin aromasıyla kendinizi şımartacağınız bir meyveli içecek.</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane fade show p-0">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menunarsosu-1lt.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Nar Sosu</span>
                                                
                                            </h5>
                                            <small class="fst-italic">Nar sosu, yemeklerinize ve salatalarınıza sıradışı bir aroma ve lezzet katıyor.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menuelmasirkesi1-lt.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Elma Sirkesi</span>
                                                
                                            </h5>
                                            <small class="fst-italic">Elma sirkesi, enfes aroması ve ferahlatıcı etkisiyle yemeklerinize canlılık katarken, sağlığınız için de harika bir seçenek olacak.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menuuzumsirkesi.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Üzüm Sirkesi</span>
                                                
                                            </h5>
                                            <small class="fst-italic">Üzüm sirkesi, doğal ve organik yapısıyla yemeklerinize eşsiz bir tat ve aroma katacak, ayrıca günlük hayatınızdaki birçok ihtiyacınızı karşılamak için de kullanabileceğiniz çok yönlü bir ürün.</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src="img/menuuzumsirkesi.png" alt="" style="width: 80px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                <span>Beyaz Sirke</span>
                                                
                                            </h5>
                                            <small class="fst-italic">Beyaz sirke, evinizdeki tüm zorlu lekelerle savaşırken, yemeklerinize kattığınızda da mükemmel bir asit dengesi sağlayarak yemeklerinizi tıpkı bir şef gibi lezzetlendirir. Çok yönlü kullanımı ve uygun fiyatı ile de cezbedici bir seçenek oluşturur.</small>
                                        </div>
                                    </div>
                                </div>
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
                        <a class="btn btn-link" href="">Hakkımızda</a>
                        <a class="btn btn-link" href="">İletisim</a>
                        <a class="btn btn-link" href="">Gizlilik Politikası</a>
                        <a class="btn btn-link" href="">Şartlar & Koşullar</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">İletişim</h4>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Adana Hacı Sabancı Organize Sanayi Bölgesi, Sarıçam/Adana</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+90 501 241 20 99</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@besocaksalgam.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">Çalışma Saatleri</h4>
                        <h5 class="text-light fw-normal">Hafta İçi</h5>
                        <p>08:00 - 17:00</p>
                        <h5 class="text-light fw-normal">Hafta Sonu (Cumartesi)</h5>
                        <p>08:00 - 12:00</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="section-title ff-secondary text-start text-primary fw-normal mb-4">Abone Ol</h4>
                        <p>Firmamız hakkında duyurulardan haberdar olmak için, mail adresinizi aşağıdaki kutuya giriniz.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control border-primary w-100 py-3 ps-4 pe-5" type="text"
                                placeholder="Mail Adresi">
                            <button type="button"
                                class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">Gönder</button>
                        </div>
                    </div>
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
