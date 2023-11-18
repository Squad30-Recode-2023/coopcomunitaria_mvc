<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualizar Passagem</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>
<!--Início do Menu com acesso para guias do site-->
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
<!--Final do Menu com acesso para guias do site-->
<!--Início do main - formulário de atualizar os dados da passagem -->
   <main class="container" id="main-container">
		<h1>Cadastre-se</h1>
		<form action="./empresa-update"">
			<div class="container">

				<div class="input-group">

					<div class="half-box">
						<label for="register-number">Nome empresa</label> <input
							type="text" name="nome_empresa" id="nome_empresa"
							placeholder="Digite seu CPF ou CNPJ"
							value="${empresa.nome_empresa}">
					</div>

					<div class="input-group">
						<div class="full-box">
							<label for="name">Código Cadastro</label> <input type="text"
								name="codigo_cadastro" id="codigo_cadastro"
								placeholder="Digite seu nome!"
								value="${empresa.codigo_cadastro}">
						</div>

						<div class="half-box">
							<label for="phone-number">Telefone</label> <input type="text"
								name="telefone_empresa" id="telefone_empresa"
								placeholder="Digite seu telefone!"
								value="${empresa.telefone_empresa}">
						</div>

						<div class="half-box spacing">
							<label for="email">E-mail</label> <input type="email"
								name="email_empresa" id="email_empresa"
								placeholder="Digite seu e-mail!"
								value="${empresa.email_empresa}">
						</div>

						<div class="input-group">
							<div class="half-box spacing">
								<label for="password">Senha</label> <input type="password"
									name="senha" id="senha" placeholder="Digite sua senha"
									value="${empresa.senha}">
							</div>


							<input type="hidden" id="id_empresa" name="id_empresa"
						class="form-control" value="${empresa.id_empresa}" /> <input
						type="submit" value="Enviar"> <a href="./empresa"
						class="btn btn-danger" style="margin-left: 10px">Cancelar</a>
		</form>

	</main>
<!--Final do main - formulário de atualizar os dados da passagem -->
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