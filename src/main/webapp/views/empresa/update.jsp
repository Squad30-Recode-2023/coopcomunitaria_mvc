<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Atualizar dados da empresa</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="assets/css/inicial.css">
</head>
<body>
	<!--Início do Menu com acesso para as guias do site-->
	<header>
		<nav class="navbar navbar-expand-sm Navbar">
			<div class="container-fluid">
				<a class="navbard-brand" href="#"><img id="logotipo"
					src="assets/Img/coopcomunitaria.png" alt="Vogue Agency"></a>
				<button class="navbar-toggler navbar-light collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseNavbar"
					aria-controls="navbar-links" aria-expanded="false"
					aria-label="toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="navbar-collapse justify-content-between"
					id="collapseNavbar">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp">Página inicial</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="paginas_html/sobrenos.jsp">Quem
								somos</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="paginas_html/servicos.jsp">Serviços</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="paginas_html/contato.jsp">Contato</a></li>
					</ul>
					<form class="d-flex">
						<button id="signup-btn" type="button" class="btn btn-primary ml-2">
							<a href="../../cliente">Cadastrar</a>
						</button>
						<button class="btn ml-2" type="submit">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
								fill="#4654A3" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                            <path fill-rule="evenodd"
									d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                        </svg>
						</button>
					</form>
				</div>
			</div>
		</nav>
	</header>
	<!--Final do Menu com acesso para as guias do site-->
	<!--Início do main - formulário de atualizar os dados da passagem -->
	<main class="container_formulario">
		<div class="ajustes-cor-formulario">
			<h2>Atualize seus dados</h2>
			<form action="./empresa-update">
				<fieldset class="caixa_formulario">

					<div class="campo">
						<legend>Nome empresa</legend>
						<input type="text" name="nome_empresa" id="nome_empresa"
							placeholder="Digite o nome da empresa"
							value="${empresa.nome_empresa}">
					</div>

					<div class="campo">
						<label for="name">Código Cadastro</label> <input type="text"
							name="codigo_cadastro" id="codigo_cadastro"
							placeholder="Digite o cpf/cnpj"
							value="${empresa.codigo_cadastro}">
					</div>

					<div class="campo">
						<label for="phone-number">Telefone</label> <input type="text"
							name="telefone_empresa" id="telefone_empresa"
							placeholder="Digite o telefone da empresa"
							value="${empresa.telefone_empresa}">
					</div>

					<div class="campo">
						<label for="email">E-mail</label> <input type="email"
							name="email_empresa" id="email_empresa"
							placeholder="Digite o email da empresa"
							value="${empresa.email_empresa}">
					</div>

					<div class="campo">
						<label for="password">Senha</label> <input type="password"
							name="senha" id="senha" placeholder="Digite sua senha"
							value="${empresa.senha}">
					</div>

					<div class="campo">
						<input type="hidden" id="id_empresa" name="id_empresa"
							class="form-control" value="${empresa.id_empresa}" /> <input
							type="submit" value="Enviar"> <a href="./empresa"
							class="btn btn-danger" style="margin-left: 10px">Cancelar</a>
					</div>
				</fieldset>
			</form>
	</main>
	<!--Final do main - formulário de atualizar os dados da passagem -->
	<!--Início do footer das páginas-->
	<footer>
		<div id="footer_content">
			<div id="footer_contacts">
				<a href="#" class="logo"> <img class="cabecalho_logo"
					src="assets/Img/coopcomunitaria.png" alt="Logo da Vogue">
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
	<!--Final do footer das páginas-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>