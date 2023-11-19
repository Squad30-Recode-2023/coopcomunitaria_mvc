<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre N�s - CoopComunit�ria</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="../assets/css/servicos.css">
   
</head>
<body>
   <!--In�cio do Header -->
   <header>
    <nav class="navbar navbar-expand-sm Navbar">
        <div class="container-fluid">
            <a class="navbard-brand" href="#"><img id="logotipo" src="../assets/Img/coopcomunitaria.png" alt="Vogue Agency"></a>
            <button class="navbar-toggler navbar-light collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNavbar" aria-controls="navbar-links" aria-expanded="false" aria-label="toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse justify-content-between" id="collapseNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="../index.jsp">P�gina inicial</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="sobrenos.jsp">Quem somos</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="servicos.jsp">Servi�os</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contato.jsp">Contato</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <button id="signup-btn" type="button" class="btn btn-primary ml-2"><a href="../cliente">Cadastrar</a></button>
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
<!--Final do Header --> 
<!--In�cio do main - conte�do principal da p�gina Sobren�s contendo uma section de acorde�o e uma section de cards-->
<main>
   <section class="conteudo_principal container">
       <div class="conteudo_principal_escrito">
           <h1 class="conteudo_principal_titulo" >Conhe�a um pouco mais sobre o nosso projeto</h1>
       </div>
       
      <div class="accordion" id="accordionExample">
       <div class="card">
           <div class="card-header" id="headingOne" >
               <h5 class="mb-0">
                   <button class="btn btn-link collapsed text-white" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                   Vis�o, miss�o e valores
                   </button>        
               </h5>
           </div>
           <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample"  >
               <div class="card-body" >
                   <ul>
                   <li>Nossa vis�o � tornar o mundo um lugar melhor para empreendedores de baixa renda, ajudando esses empreendedores a serem mais bem-sucedidos em seus neg�cios.</li>
                   <li>Nossa miss�o � fornecer apoio em todos os aspectos, ajudando os empreendedores de baixa renda a crescer no seu segmento e conquistar mais oportunidades de neg�cio.
                       A Coopcomunit�ria est� comprometida em ser inclusiva, envolvente e inspiradora.
                   </li>
                   <li>
                       Valores:
                       <ul>
                           <li>Empoderamento investindo em capacita��o e treinamento para que empreendedores cres�am;</li>
                           <li>Sustentabilidade  em busca de solu��es sustent�veis para todos;</li>
                           <li>Inclus�o criando uma cultura inclusiva para todos os indiv�duos.</li>
                           </li>
                       </ul>
               </div>
           </div>
         </div>
      <div class="card">
         <div class="card-header" id="headingTwo">
            <h5 class="mb-0">
               <button class="btn btn-link collapsed text-white" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" >
               Do que preciso para me cadastrar? 
               </button>
            </h5>
         </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
               <div class="card-body">
                  <ol>
                     <li>A Coopcomunit�ria est� dispon�vel para todos que querem contribuir com a cria��o de mais neg�cios em comunidades de baixa renda. Para se cadastrar, � preciso apenas de CPF ou CPNJ e estar de acordo com os valores e a miss�o da cooperativa.</li>
                  </ol>
               </div>
            </div>
       </div>
      <div class="card">
         <div class="card-header" id="headingThree">
            <h5 class="mb-0">
               <button class="btn btn-link collapsed text-white" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                � cobrado alguma taxa?
               </button>
            </h5>
         </div>
         <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
            <div class="card-body">
               Para manter a qualidade do nosso servi�o, � necess�rio que os membros de nossa cooperativa atualizem seus dados anualmente. Essa atualiza��o n�o tem nenhuma taxa associada, mas � fundamental para que possamos oferecer o melhor para os nossos empreendedores.
            </div>
         </div>
      </div>
   </section>
   
<!--In�cio da section - Conte�do adicional da p�gina sobre n�s com depoimentos-->

   <section class="conteudo_principal py-5">
    <div class="conteudo_principal_escrito container">
      <h1 class="conteudo_principal_titulo" >Relatos de participantes do nosso projeto</h1>
    </div>
    <div class="row">

      <div class="col-md-4 d-flex align-items-stretch">
        <div class="card mb-4 w-100">
          <img src="../assets/Img/neg�cio-no-ramo-da-constru��o.jpg.webp" class="card-img-top" alt="Service 2 Image">
          <div class="card-body">
            <h5 class="card-title">Desempregados em decorr�ncia da pandemia</h5>
            <p class="card-text">Jos�, de 25 anos e morador de SP, foi mais um dentre os in�meros moradores de comunidades que perderam seu emprego e, consequentemente, sua fonte de renda durante a pandemia
              Dessa forma, a realoca��o no mercado de trabalho foi dif�cil e decidiu inserir-se no ramo do empreendedorismo no ramo da constru��o. Atrav�s do CoopComunit�ria conseguiu captar mais clientes e suas vendas
              aumentaram em 50%. </p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4 d-flex align-items-stretch">
          <div class="card mb-4 w-100">
            <img src="../assets/Img/mercearia.jpg" class="card-img-top" alt="Service 2 Image">
            <div class="card-body">
              <h5 class="card-title">Dificuldades de realoca��o no mercado de trabalho</h5>
              <p class="card-text">Ant�nia, de 53 anos e moradora de SP, � mais uma das pessoas de comunidade que enfrentam dificuldades de realoca��o no mercado de trabalho ap�s perderem o emprgo 
                H� muitas dificuldades impostas pelo mercado pedir pessoas mais jovens ou que morem mais perto do servi�o, dessa forma, decidiu abrir sua pr�pria merceria e no meio de tantas incertezas
                apostar no Coopcomunit�ria para captar clientes da sua comunidade e, dessa maneira, conseguiu iniciar e ter um sucesso inicial nessa nova jornada de sua vida.
              </p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4 d-flex align-items-stretch">
          <div class="card mb-4 w-100">
            <img src="../assets/Img/20221103_mae_solo.webp" class="card-img-top" alt="Service 2 Image">
            <div class="card-body">
              <h5 class="card-title">M�e solo decide abrir empreendimento para trabalhar de casa</h5>
              <p class="card-text">Maria Clara, de 27 anos e moradora de SP, � uma m�e solo que vinha encontrando muita dificuldade de conseguir uma vaga de emprego ap�s o per�odo de gesta��o. Al�m disso,
                a carga hor�ria era um fator importante para poder cuidar da filha de 2 anos rec�m completados. Dessa forma, decidiu trabalhar de casa atrav�s da venda de doces e de hortali�as, vendidas de
                sua planta��o em um espa�o da casa. Atrav�s do CoopComunit�ria conseguiu o apoio da comunidade e consegue atualmente empreender de casa e cuidar de sua filha ao longo do dia.
              </p>
              
            </div>
          </div>
        </div>
      </div>
      </section>         
<!--Final da section - Conte�do adicional da p�gina sobre n�s com depoimentos-->  
</main>
<!--In�cio do rodap� das p�ginas-->
<footer>
  <div id="footer_content">
      <div id="footer_contacts">
          <div id="central_logo">
          <a href="#" class="logo"> <img class="cabecalho_logo" src="../assets/Img/coopcomunitaria.png" alt="Logo da Vogue"> </a>
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
        <li><a href="#" class="footer_link">Constru��o Civil</a></li>
        <li><a href="#" class="footer_link">Merceria</a></li>
    </ul>

    <ul class="footer_list">
        <li><h3>Servi�os</h3></li>
        <li><a href="#" class="footer_link">Mercearia</a></li>
        <li><a href="#" class="footer_link">Constru��o civil</a></li>
        <li><a href="#" class="footer_link">Confeitaria</a></li>
    </ul>

      <div id="footer_subscribe">
          <h2>Inscreva-se</h2>
          <p> Digite seu email para receber nossas novidades e ofertas de servi�os</p>
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
<!--Final do rodap� das p�ginas-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


</body>
</html>
