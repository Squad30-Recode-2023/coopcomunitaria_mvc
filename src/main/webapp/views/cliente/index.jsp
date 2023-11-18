<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">
<title>Agência | Clientes</title>
</head>
<body>
<!--Início do Menu com acesso para as guias do site-->
	<header>
		<nav class="navbar navbar-expand-sm Navbar">
			<div class="container-fluid">
				<a class="navbard-brand" href="#"><img id="logo"
					src="assets/images/logo_nav.png" alt="Vogue Agency"></a>
				<button class="navbar-toggler navbar-light collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseNavbar"
					aria-controls="navbar-links" aria-expanded="false"
					aria-label="toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="navbar-collapse" id="collapseNavbar">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link text-black"
							href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="paginashtml/destino.jsp">Destino</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="paginashtml/promocoes.jsp">Promoções</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="paginashtml/contato.jsp">Contato</a></li>
						<li class="nav-item_2"><a class="nav-link text-black"
							href="./cliente">Cadastrar-se</a></li>
						<li class="nav-item_3"><a class="nav-link text-black"
							href="paginashtml/login.jsp">Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!--Final do Menu com acesso para as guias do site-->
	<!--Início da sessão do menu com o modelo que implementa o CRUD nas tabelas-->
	<section>
		<nav class="navbar navbar-expand-sm Navbar">
			<div class="container-fluid">
				<button class="navbar-toggler navbar-light collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseNavbar"
					aria-controls="navbar-links" aria-expanded="false"
					aria-label="toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div style="text-align: center;">
					<div class="navbar-collapse" id="collapseNavbar">
						<ul class="navbar-nav">
							<li class="nav-item4"><a class="nav-link text-white"
								href="./servico" style="color: white;">Cadastro compra</a></li>
							<li class="nav-item5"><a class="nav-link text-white"
								href="./empresa" style="color: white;">Cadastro Passagem</a></li>
							<li class="nav-item_6"><a class="nav-link text-white"
								href="./cliente" style="color: white;">Cadastro cliente</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</section>
	<!--Final da sessão do menu com o modelo que implementa o CRUD nas tabelas-->
	<!--Início da parte principal que exibe as tabelas para o usuário -->
	
	<main>
		<div class="p-4">
			<a href="./views/cliente/cadastrarCliente.jsp"
				class="btn btn-primary mb-2 botao1"> Novo Cliente </a>
			<table class="table table-responsive table-hover">
				<thead class="table-dark">
					<tr>
						<th scope="col" style="color: #ffffff;">Id</th>
						<th scope="col" style="color: #ffffff;">CPF</th>
						<th scope="col" style="color: #ffffff;">Nome</th>
						<th scope="col" style="color: #ffffff;">Telefone</th>
						<th scope="col" style="color: #ffffff;">E-mail</th>
						<th scope="col" style="color: #ffffff;">Senha</th>
						<th scope="col" style="color: #ffffff;">Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listaClientes}" var="u">
						<tr>
							<td style="color: red; background-color: white">${u.id_cliente}</td>
							<td style="color: red; background-color: white">${u.cpf}</td>
							<td style="color: red; background-color: white">${u.nome_cliente}</td>
							<td style="color: red; background-color: white">${u.telefone_cliente}</td>
							<td style="color: red; background-color: white">${u.email_cliente}</td>
							<td style="color: red; background-color: white">${u.senha_cliente}</td>
							<td style="background-color: white;">
								<div class="d-flex">
									<a href="cliente-edit?id_cliente=${u.id_cliente}" class="mx-1"
										title="Editar"> <i class="ri-file-edit-line"></i>
									</a> <a href="cliente-delete?id_cliente=${u.id_cliente}"
										class="mx-1" title="Cancelar"
										onclick="return confirm('Deseja excluir ${u.nome_cliente}?')"> <i
										class="ri-delete-bin-2-line"></i>
									</a>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</main>
	<!--Final da parte principal que exibe as tabelas para o usuário -->
	<!--Início do footer da página -->
	<footer>
		<div id="footer_content">
			<div id="footer_contacts">
				<a href="#" class="logo"> <img class="cabecalho_logo"
					src="./assets/images/logo_nav.png" alt="Logo da Vogue">
				</a>
				<p>A empresa para realizar seus sonhos com a melhor experiência</p>
				<div id="footer_social_media">
					<a href="#" class="footer_link" id="instagram"> <i
						class="fa-brands fa-instagram"></i>
					</a> <a href="#" class="footer_link" id="facebook"> <i
						class="fa-brands fa-facebook-f"></i>
					</a> <a href="#" class="footer_link" id="whatsapp"> <i
						class="fa-brands fa-whatsapp"></i>
					</a>
				</div>
			</div>
			<ul class="footer_list">
				<li>
					<h3>Categorias de viagens</h3>
				</li>
				<li><a href="#" class="footer_link">Ecoturismo</a></li>
				<li><a href="#" class="footer_link">Cidades paradisíacas</a></li>
				<li><a href="#" class="footer_link">Cidades Históricas</a></li>
			</ul>
			<ul class="footer_list">
				<li>
					<h3>Produtos</h3>
				</li>
				<li><a href="#" class="footer_link">Aluguel de carros</a></li>
				<li><a href="#" class="footer_link">Shows</a></li>
				<li><a href="#" class="footer_link">Hospedagem</a></li>
			</ul>
			<div id="footer_subscribe">
				<h2>Inscreva-se</h2>
				<p>Digite seu email para receber nossas promoções de viagem</p>
				<div id="input_group">
					<input type="email" id="email">
					<button>
						<i class="fa-regular fa-envelope"></i>
					</button>
				</div>
			</div>
		</div>
		<div id="footer_copyright">&#169 2023</div>
	</footer>
	<!--Final do footer da página -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>