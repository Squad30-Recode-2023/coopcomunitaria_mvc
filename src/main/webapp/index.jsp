<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" type="text/css"  href="assets/css/inicial.css"> 
</head>
<body>
   <header>
    <nav class="navbar navbar-expand-sm Navbar">
        <div class="container-fluid">
            <a class="navbard-brand" href="#"><img id="logotipo" src="assets/Img/coopcomunitaria.png" alt="Coopcoomunitária"></a>
            <button class="navbar-toggler navbar-light collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNavbar" aria-controls="navbar-links" aria-expanded="false" aria-label="toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse justify-content-between" id="collapseNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="index.jsp">Página inicial</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="paginas_html/sobrenos.jsp">Quem somos</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="paginas_html/servicos.jsp">Serviços</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="paginas_html/contato.jsp">Contato</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <button id="signup-btn" type="button" class="btn btn-primary ml-2"><a href="./cliente">Cadastrar</a></button>
                    <button class="btn ml-2" type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#4654A3" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                        </svg>
                    </button>
                </form>
            </div>
        </div>
    </nav>
 </header>
    

<main>
    <div id="carouselMain" class="carousel carousel-dark slide mt-1" data-bs-ride="carousel">
        <!-- Slides do carrossel -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="assets/Img/jovem-grupo1.jpg" alt="Slide 1" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="assets/Img/cytonn.png" alt="Slide 2" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="assets/Img/frutas.png" alt="Slide 3" class="d-block w-100">
            </div>
        </div>
        <!-- Controles do carrossel -->
        <a class="carousel-control-prev" href="#carouselMain" role="button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </a>
        <a class="carousel-control-next" href="#carouselMain" role="button" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Próximo</span>
        </a>
    </div>



   

<!-- Texto Imagen Section -->
<section class="py-5">
    <div id="about-area" class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-12 order-md-1 order-2 area-text">
                <div class="container-fluid col-md-12 ">
                    <a><img class="img-fluid" id="about_logo" src="" alt=""></a>
                </div>
                <div class="container-fluid">
                    <h3>Bem-vindo a coopcomunitária</h3>
                    <p>Embarque conosco em uma jornada de excelência! Aqui, você encontrará uma gama diversificada de serviços e produtos meticulosamente elaborados para atender aos seus desejos e necessidades.
                        Esteja você procurando soluções profissionais para aprimorar seus negócios, serviços pessoais para simplificar sua vida ou produtos inovadores que enriquecem suas experiências cotidianas, nossas ofertas são cuidadosamente projetadas para atender a todas as suas necessidades.
                        Dê um passo à frente e explore as possibilidades que esperam por você. Descubra um mundo onde seus sonhos e aspirações se transformam em realidade. Nosso objetivo não é apenas atender às suas expectativas, mas superá-las de maneira que corresponda à sua jornada!
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 order-md-2 order-1 ">
                <img id="about-image" class="img-fluid img-thumbnail" src="assets/Img/willian-souza-p5BoBF0XJUA-unsplash.jpg" alt="foto de paisagem">
            </div>
        </div>
    </div>
</section>



    <!-- Servicos Section -->
    <section id="services" class="py-5">
        <div class="container">
            <h2 class="text-center">Nossos Serviços</h2>
            <div class="row">
                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-4 w-100">
                        <img src="assets/Img/bermix-studio-y9RGeKyVpM8-unsplash.jpg" class="card-img-top" alt="Service 2 Image">
                        <div class="card-body">
                            <h3 class="card-title">Eletrônica</h3>
                            <p class="card-text">Seu parceiro para reparos e serviços eletrônicos,  
                                De smartphones a laptops, de consoles de jogos a eletrodomésticos, nossa experiência abrange uma ampla variedade de produtos eletrônicos.Nosso compromisso é com a qualidade e a satisfação do cliente!
                            </p>
                            <a href="#" class="btn btn-primary ">Saiba Mais</a>
                        </div>
                    </div>
                    
                </div>
                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-4 w-100">
                        <img src="assets/Img/adam-winger-fI-TKWjKYls-unsplash.jpg" class="card-img-top" alt="Service 2 Image">
                        <div class="card-body">
                            <h3 class="card-title">Cabeleireiro</h3>
                            <p class="card-text">Transforme seu visual com nossos serviços de cabeleireiro.
                                Experimente a arte do design de cabelo nas mãos de nossos cabeleireiros qualificados e criativos. Nossos serviços de cabeleireiro são adaptados para realçar sua beleza e personalidade únicas.
                            </p>
                            <a href="#" class="btn btn-primary ">Saiba Mais</a>
                        </div>
                    </div>
                    
                </div>
                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-4 w-100">
                        <img src="assets/Img/emmanuel-ikwuegbu-_2AlIm-F6pw-unsplash.jpg" class="card-img-top" alt="Service 2 Image">
                        <div class="card-body">
                            <h3 class="card-title">Construtora</h3>
                            <p class="card-text">Construindo Sonhos, Excelência em Serviços de Construção
                                Transforme sua visão em realidade com nossos serviços de construção de alto nível. Com dedicação ao artesanato de qualidade e design inovador, somos seus parceiros na criação de espaços que refletem seus sonhos e aspirações.  
                            </p>
                            <a href="#" class="btn btn-primary ">Saiba Mais</a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
</main>   
 <!--Início do rodapé das páginas-->
<footer>
    <div id="footer_content">
        <div id="footer_contacts">
            <div id="central_logo">
            <a href="#" class="logo"> <img class="cabecalho_logo" src="assets/Img/coopcomunitaria.png" alt="Logo da Vogue"> </a>
          </div>
            <div id="footer_social_media">
                <a href="#" class="footer_link" id="instagram"><i class="fa-brands fa-instagram"></i></a>
                <a href="#" class="footer_link" id="facebook"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#" class="footer_link" id="whatsapp"><i class="fa-brands fa-whatsapp"></i></a>
            </div>    
        </div>
        <ul class="footer_list">
          <li><h3>Mais populares</h3></li>
          <li><a href="#" class="footer_link">Confeitaria</a></li>
          <li><a href="#" class="footer_link">Construção Civil</a></li>
          <li><a href="#" class="footer_link">Merceria</a></li>
      </ul>
  
      <ul class="footer_list">
          <li><h3>Serviços</h3></li>
          <li><a href="#" class="footer_link">Mercearia</a></li>
          <li><a href="#" class="footer_link">Construção civil</a></li>
          <li><a href="#" class="footer_link">Confeitaria</a></li>
      </ul>
  
        <div id="footer_subscribe">
            <h2>Inscreva-se</h2>
            <p> Digite seu email para receber nossas novidades e ofertas de serviços</p>
            <div id="input_group">
                <input type="email" id="email">
                <button><i class="fa-regular fa-envelope"></i></button>
            </div>
        </div>
    </div>
    <div id="footer_copyright">
        &#169
        Squad 30 - RecodePro
    </div>
  </footer>
  <!--Final do rodapé das páginas-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>