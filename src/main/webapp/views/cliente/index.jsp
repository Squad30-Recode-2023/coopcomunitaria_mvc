<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
<link rel="stylesheet" type="text/css" href="assets/css/inicial.css">
<title>Coopcomunitaria | Clientes</title>
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
							<a href="cliente">Cadastrar</a>
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
	<!--Início da sessão do menu com o modelo que implementa o CRUD nas tabelas-->
	<section>
		<nav class="navbar navbar-light bg-light">
			<div class="container-fluid">
				<div class="navbar-collapse">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link text-black"
							href="./servico" style="color: white;">Cadastro Serviço</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="./empresa" style="color: white;">Cadastro Empresa</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="./cliente" style="color: white;">Cadastro Cliente</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>
	<!--Final da sessão do menu com o modelo que implementa o CRUD nas tabelas-->
	<!--Início da parte principal que exibe as tabelas para o usuário -->

<main>
    <div class="p-4">
        <a href="./views/cliente/cadastrarCliente.jsp" class="btn btn-primary mb-2 botao1">Novo Cliente</a>
        <div class="table-responsive">
            <table class="table table-hover">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">CPF</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listaClientes}" var="u">
                        <tr>
                            <td style="color: #4654A3; background-color: white">${u.id_cliente}</td>
                            <td style="color: #4654A3; background-color: white">${u.cpf}</td>
                            <td style="color: #4654A3; background-color: white">${u.nome_cliente}</td>
                            <td style="color: #4654A3; background-color: white">${u.telefone_cliente}</td>
                            <td style="color: #4654A3; background-color: white">${u.email_cliente}</td>
                            <td style="color: #4654A3; background-color: white">
                                <div class="d-flex">
                                    <a href="cliente-edit?id_cliente=${u.id_cliente}" class="mx-1" title="Editar">
                                        <i class="ri-file-edit-line"></i>
                                    </a>
                                    <a href="cliente-delete?id_cliente=${u.id_cliente}" class="mx-1" title="Deletar"
                                        onclick="return confirm('Deseja excluir ${u.nome_cliente}?')">
                                        <i class="ri-delete-bin-2-line"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</main>
	<!--Final da parte principal que exibe as tabelas para o usuário -->
	<footer>
		<div id="footer_content">
			<div id="footer_contacts">
				<div id="central_logo">
					<a href="#" class="logo"> <img class="cabecalho_logo"
						src="assets/Img/coopcomunitaria.png" alt="Logo da Vogue">
					</a>
				</div>
				<div id="footer_social_media">
					<a href="#" class="footer_link" id="instagram"><i
						class="fa-brands fa-instagram"></i></a> <a href="#"
						class="footer_link" id="facebook"><i
						class="fa-brands fa-facebook-f"></i></a> <a href="#"
						class="footer_link" id="whatsapp"><i
						class="fa-brands fa-whatsapp"></i></a>
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
				<p>Digite seu email para receber nossas novidades e ofertas de
					serviços</p>
				<div id="input_group">
					<input type="email" id="email">
					<button>
						<i class="fa-regular fa-envelope"></i>
					</button>
				</div>
			</div>
		</div>
		<div id="footer_copyright">&#169 Squad 30 - RecodePro</div>
	</footer>
	<!--Final do rodapé das páginas-->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>