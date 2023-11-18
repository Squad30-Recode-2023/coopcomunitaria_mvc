<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compras - Atualizar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>
<!--Início do Menu com acesso para as  guias do site-->
     <header>
      <nav class="navbar navbar-expand-sm Navbar">
         <div class="container-fluid">
            <a class="navbard-brand" href="#"><img id="logo" src="assets/images/logo_nav.png" alt="Vogue Agency"></a>
            <button class="navbar-toggler navbar-light collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNavbar" aria-controls="navbar-links" aria-expanded="false" aria-label="toggle navigation">
               <span class="navbar-toggler-icon"></span>
             </button>
            <div class="navbar-collapse" id="collapseNavbar">
               <ul class="navbar-nav">
                  <li class="nav-item">
                     <a class="nav-link text-black" href="index.jsp">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="paginashtml/destino.jsp">Destino</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="paginashtml/promocoes.jsp">Promoções</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link text-black" href="paginashtml/contato.jsp">Contato</a>
                  </li>
                  <li class="nav-item_2">
                    <a class="nav-link text-black" href="./cliente">Cadastrar-se</a>
                 </li>
                 <li class="nav-item_3">
                    <a class="nav-link text-black" href="paginashtml/login.jsp">Login</a>
                 </li>
               </ul>
            </div>
         </div>
      </nav>
   </header>
<!--Final do Menu com acesso para as guias do site-->
<!--Início do main - conteúdo principal (formulário) da página de cadastro de compra -->
 <main class="container_formulario">
  <div class="ajustes-cor-formulario">
    <h2>Atualizar sua compra</h2>
    <h4>Preencha o formulário abaixo para atualizar sua compra em nosso site</h4>
    <form action="servico-update">
      <fieldset class="caixa_formulario">
        <input type="hidden" id="id_servico" name="id_servico" class="form-control" value="${servico.id_servico}" />
        <div class="campo">
          <legend>Categoria</legend>
          <input type="text" placeholder="Cartão ou dinheiro" id="categoria" name="categoria" class="form-control" value="${servico.categoria}">
        </div>
        <div class="campo">
          <legend>Nome do serviço</legend>
          <input type="text" placeholder="Digite a data da compra" id="nome_do_servico" name="nome_do_servico" class="form-control" value="${servico.nome_do_servico}">
        </div>
        <div class="campo">
          <legend>Preço</legend>
          <input type="number" placeholder="Cartão ou dinheiro" id="preco" name="preco" class="form-control" value="${servico.preco}">
        </div>
        <div class="campo">
          <legend>Cliente</legend>
          <select id="id_cliente" name="id_cliente" class="form-control">
            <c:forEach items="${listaClientes}" var="c">
              <c:choose>
                <c:when test="${c.id_cliente eq servico.c1.id_cliente}">
                  <option value="${c.id_cliente}" selected>${c.nome_cliente}</option>
                </c:when>
                <c:otherwise>
                  <option value="${c.id_cliente}">${c.nome_cliente}</option>
                </c:otherwise>
              </c:choose>
            </c:forEach>
          </select>
        </div>
        <div class="campo">
          <legend>Empresa prestadora do serviço</legend>
          <select id="id_empresa" name="id_empresa" class="form-control">
            <c:forEach items="${listaEmpresas}" var="e">
              <c:choose>
                <c:when test="${e.id_empresa eq servico.e1.id_empresa}">
                  <option value="${e.id_empresa}" selected>${e.nome_empresa}</option>
                </c:when>
                <c:otherwise>
                  <option value="${e.id_empresa}">${e.nome_empresa}</option>
                </c:otherwise>
              </c:choose>
            </c:forEach>
          </select>
        </div>
        <input type="submit" value="Enviar">
        <a href="./servico" class="btn btn-danger" style="margin-left: 10px">Cancelar</a>
      </fieldset>
    </form>
  </div>
</main>
<!--Final do main - conteúdo principal (formulário) da página de cadastro das compras->
<!--Início do rodapé das páginas-->
   <footer>
      <div id="footer_content">
         <div id="footer_contacts">
            <a href="#" class="logo"> <img class="cabecalho_logo" src="assets/images/logo_nav.png" alt="Logo da Vogue"> </a>
            <p>A empresa para realizar seus sonhos com a melhor experiência</p>
            <div id="footer_social_media">
               <a href="#" class="footer_link" id="instagram">
               <i class="fa-brands fa-instagram"></i>
               </a>
               <a href="#" class="footer_link" id="facebook">
               <i class="fa-brands fa-facebook-f"></i>
               </a>
               <a href="#" class="footer_link" id="whatsapp">
               <i class="fa-brands fa-whatsapp"></i>
               </a>
            </div>
         </div>
         <ul class="footer_list">
            <li>
               <h3>Categorias de viagens</h3>
            </li>
            <li>
               <a href="#" class="footer_link">Ecoturismo</a>
            </li>
            <li>
               <a href="#" class="footer_link">Cidades paradisíacas</a>
            </li>
            <li>
               <a href="#" class="footer_link">Cidades Históricas</a>
            </li>
         </ul>
         <ul class="footer_list">
            <li>
               <h3>Produtos</h3>
            </li>
            <li>
               <a href="#" class="footer_link">Aluguel de carros</a>
            </li>
            <li>
               <a href="#" class="footer_link">Shows</a>
            </li>
            <li>
               <a href="#" class="footer_link">Hospedagem</a>
            </li>
         </ul>
         <div id="footer_subscribe">
            <h2>Inscreva-se</h2>
            <p> Digite seu email para receber nossas promoções de viagem</p>
            <div id="input_group">
               <input type="email" id="email">
               <button>
               <i class="fa-regular fa-envelope"></i>
               </button>
            </div>
         </div>
      </div>
      <div id="footer_copyright">
         &#169
         2023
      </div>
   </footer>
<!--Final do rodapé das páginas-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>