<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="softv1.hakkimizda" %>

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
                        <a href="hakkimizda.aspx" class="nav-item nav-link active">Hakkımızda</a>
                        <a href="urunler.aspx" class="nav-item nav-link">Ürünler</a>
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
                    <h1 class="display-3 text-white mb-3 animated slideInDown">HAKKIMIZDA</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="#">Anasayfa</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Hakkımızda</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row gx-5">
                    <div class="col">
                        <img alt="LOGO" src="/img/logo.png" style="display:inline-block;margin-left:400px;width:300px" />
                        </div>
                    </div>
                <div class="row gx-5">
                    <div class="col">
                        
                        <h5 class="section-title ff-secondary text-start text-primary fw-normal">Biz Kimiz?</h5>
                        <p class="mb-4" style="text-align: justify;">
                            <b>Suluca Yemekçilik, </b>2010 yılında kurulmuş olan bir firma olarak yılların deneyimiyle birlikte özenle hazırladığı lezzetlerini 5 Ocak Şalgam markası altında siz değerli tüketicilerimize sunmaktadır. Kurucusu <b>Süleyman Kurşun,</b> yemekçilik sektöründe başladığı meslek hayatına 2021 yılında şalgam üretimini ekleyerek gıda sektöründeki varlığını daha da pekiştirmiştir.
                            <b>5 OCAK, </b>9500 metrekare üzerine kurulu olan tesisinin 8500 metrekarelik kapalı alanında faaliyet göstermektedir. Başlangıçta 1.000.000 litre üretim kapasitesiyle yola çıkan şirket, günümüzde meyveli içecekler ve sos çeşitlerini de ürün yelpazesine ekleyerek yıllık 30.000.000 litre üretim kapasitesine ulaşmıştır. Geleneksel yöntemlerle üretilen şalgam, meyveli içecek çeşitleri, nar ekşili sos, limon sosu ve sirke gibi ürünleriyle öne çıkan firma, üretimlerini Türkiye'nin her yerine pazarlama gururunu taşımaktadır. Sağladığı kaliteli ürünler ve hizmetlerle müşteri memnuniyetini ön planda tutmaktadır. Tüm ürünlerimiz özenle seçilmiş malzemelerle hazırlanmakta ve hijyen standartlarına uygun olarak üretim süreci gerçekleştirilmektedir. Şirketimiz, kaliteli ürünler sunmanın yanı sıra, bayilik yapılandırmasına da önem vererek yaygın bir dağıtım ağı oluşturmuştur. Sektördeki uzun yıllara dayanan deneyimi, güvenilirliği ve yenilikçi yaklaşımıyla öne çıkan bir firmadır. Misyonumuz, lezzetli ve sağlıklı ürünler sunarak müşterilerimize kaliteli bir deneyim yaşatmaktır. Vizyonumuz ise sektörde lider bir marka olmak ve tüketicilere geniş bir ürün yelpazesi sunarak herkesin damak zevkine hitap etmektir.<b> Müşterilerimizin taleplerini dikkate alarak sürekli olarak ürünlerimizi geliştirmekte ve çeşitlendirmekteyiz.</b> Yenilikçi fikirleri ve teknolojik yenilikleri takip ederek, sektördeki en iyi ürünleri sunmayı hedeflemekteyiz. Müşteri memnuniyeti ve kaliteli üretim anlayışımızla, sektördeki güvenilirliğine ve başarımızı sürekli olarak artırmayı amaçlamaktayız. Sadece ürünlerimizin kalitesine değil, aynı zamanda çevreye ve topluma olan sorumluluğumuza da önem veriyoruz. Üretim süreçlerimizde çevresel etkileri minimize etmek için sürdürülebilir uygulamaları benimsemekteyiz. Doğal kaynakları koruma, atık yönetimi ve enerji tasarrufu gibi önlemleri alarak çevresel sürdürülebilirliği destekliyoruz.
                            Bayilik yapılandırmamızla birlikte, iş ortaklarımızın başarısını da desteklemekteyiz. Geniş bir bayi ağı oluşturarak ürünlerimizin daha geniş kitlelere ulaşmasını sağlıyoruz. Bayilerimize sağladığımız eğitim ve destek ile işlerinin büyümesine ve gelişmesine yardımcı oluyoruz. İş birliği ve güvene dayalı uzun vadeli ilişkiler kurmayı hedefliyoruz. Kalite, güvenilirlik ve müşteri memnuniyeti odaklı çalışmalarımızı sürdürmekteyiz. İnovasyon ve sürekli gelişim prensipleriyle, sektördeki lider konumumuzu korumak ve ilerlemek için çalışıyoruz. Müşterilerimizin beklentilerini aşan ürünler sunarak onların hayatına lezzet katmayı hedefliyoruz.
                            <b>5 Ocak Şalgam markası olarak, geleneksel tariflere sadık kalırken, yenilikçi yaklaşımımızla sürekli olarak yeni tatlar keşfetmeye devam ediyoruz. Şalgam, meyveli içecekler, soslar ve diğer ürünlerimizle Türkiye'nin her yerinde tüketicilerimize kaliteli ve lezzetli seçenekler sunmaktan gurur duyuyoruz. Gelecekte de yenilikçi ürünler ve hizmetlerle müşterilerimize en iyi deneyimi yaşatmayı amaçlıyoruz. Kaliteli ürünlerimiz, güvenilirliğimiz ve müşteri odaklı yaklaşımımızla, sektördeki başarı ve itibarımızı daha da ileri taşımayı hedeflemekteyiz.
                            </b>
                        </p>
                    </div>
                </div>


                <div class="row gx-5">
                    <div class="col">
                        
                         <h5 class="section-title ff-secondary text-start text-primary fw-normal">MİSYON</h5>
                        <p class="mb-4" style="text-align: justify;">
                            Misyonumuz, müşterilerimize kaliteli, lezzetli ve sağlıklı ürünler sunarak müşterilerimize kaliteli bir deneyim yaşatmaktır Üretim sürecinde doğal ve seçkin malzemeler kullanarak, geleneksel tariflere sadık kalırken yenilikçi yaklaşımlarla ürünlerimizi sürekli olarak geliştirmekteyiz. Müşteri memnuniyetini en üst düzeyde tutmak, çevresel sürdürülebilirliğe önem vermek ve topluma değer katmak, işimizin temel değerleridir.
                        </p> </div>
                        <div class="col">
                        <h5 class="section-title ff-secondary text-start text-primary fw-normal">VİZYON</h5>
                        <p class="mb-4" style="text-align: justify;">
                            Vizyonumuz, sektörde lider bir marka olmak ve tüketicilerin tercih ettiği ilk adres haline gelmektir. Yenilikçi ürünlerimiz, yaratıcı lezzet kombinasyonlarımız ve üstün kalitemizle fark yaratmayı hedefliyoruz. Müşterilerimize geniş bir ürün yelpazesi sunarak, her zevke ve ihtiyaca hitap etmek istiyoruz. Aynı zamanda, sürekli gelişim ve inovasyon ile sektördeki trendleri belirleyen bir marka olmayı amaçlıyoruz. 
                        </p>
                    </div>
                </div>

                
                
                <div class="row gx-5">
                        <div class="col">
                         <h5 class="section-title ff-secondary text-start text-primary fw-normal">İNSAN KAYNAKLARI</h5>
                        <p class="mb-4" style="text-align: justify;">
                            5 Ocak markası olarak, çalışanlarımızı en değerli varlık olarak görüyor ve onların gelişimine büyük önem veriyoruz. İnsan Kaynakları departmanı olarak amacımız, yetenekli ve motivasyonlu profesyonelleri şirketimize çekmek, işe alım sürecinde adil ve objektif bir yaklaşım sergilemek, çalışanlarımızın potansiyellerini ortaya çıkarmak ve kariyer gelişimlerini desteklemektir.
İşe alım sürecimiz, adayların niteliklerine, deneyimlerine ve yeteneklerine dayanarak gerçekleştirilir. İşe alım aşamasında çeşitlilik ve kapsayıcılık prensiplerine uygun davranır, farklı kültürel ve demografik geçmişlere sahip adayları teşvik ederiz. Adaylarımızın yeteneklerini doğru bir şekilde değerlendirmek ve en iyi adayları seçmek için, kapsamlı mülakatlar, değerlendirme merkezleri ve yetkinlik tabanlı testler gibi yöntemler kullanırız.
Çalışanlarımızın gelişimi ve performans yönetimi süreçlerinde destekleyici bir rol üstleniriz. Performans hedefleri belirleme, geri bildirim sağlama ve profesyonel gelişim planlaması gibi faaliyetlerle çalışanlarımızın yeteneklerini sürekli olarak geliştirmelerini sağlarız. Eğitim ve gelişim programlarıyla çalışanlarımızın yeni beceriler öğrenmelerini, mevcut yetkinliklerini iyileştirmelerini ve kariyer hedeflerine ulaşmalarını destekleriz. Sağlık, güvenlik ve refahı bizim için önemlidir. İş sağlığı ve güvenliği politikalarıyla güvenli bir çalışma ortamı sağlamaya öncelik veririz. Aynı zamanda, çalışanların iş-yaşam dengesini sağlamalarına yardımcı olmak için esnek çalışma düzenleri, sağlık sigortası, sosyal yardımlar ve rekreasyon imkanları gibi avantajlar sunarız.
5 Ocak olarak, çalışanların motivasyonunu yükseltmek ve takım çalışmasını teşvik etmek için etkili iletişim ve iç iletişim programları yürütürüz. Çalışanların geri bildirimlerini önemser ve onları dinleriz. Ayrıca, çeşitli etkinlikler, sosyal sorumluluk projeleri ve kurumsal etkinliklerle birlikte çalışma ortamında pozitif bir atmosfer yaratırız.

                        </p>

                    </div>
                </div>
                       
            </div>
        </div>
        <!-- About End -->



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

