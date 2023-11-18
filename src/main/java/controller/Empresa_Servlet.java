package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.crud.dao.Empresa_DAO;

import br.com.crud.model.EmpresaModel;



@WebServlet(urlPatterns = {"/empresa", "/empresa-create", "/empresa-edit", "/empresa-update", "/empresa-delete"})
public class Empresa_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  Empresa_DAO empresadao = new Empresa_DAO();
	  EmpresaModel empresa = new EmpresaModel();   
    
    public Empresa_Servlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/empresa":
			buscarempresa(request, response);
			break;
		case "/empresa-create":
			inserirempresa(request, response);
			break;
		case "/empresa-edit":
			edit(request, response);
			break;
		case "/empresa-update":
			atualizarempresa(request, response);
			break;
		case "/empresa-delete":
			deletarempresa(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}
	
	protected void buscarempresa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<EmpresaModel> lista = empresadao.buscarEmpresa();
		request.setAttribute("listaEmpresas", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/empresa/index.jsp");
		rd.forward(request, response);
	}
	
	protected void inserirempresa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		empresa.setNome_empresa(request.getParameter("nome_empresa"));
		empresa.setCodigo_cadastro(request.getParameter("codigo_cadastro"));
		empresa.setTelefone_empresa(Integer.parseInt((request.getParameter("telefone_empresa"))));
		empresa.setEmail_empresa(request.getParameter("email_empresa"));
		empresa.setSenha(request.getParameter("senha"));

		empresadao.inserirEmpresa(empresa);
		response.sendRedirect("empresa");
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_empresa = Integer.parseInt(request.getParameter("id_empresa"));
		empresa = empresadao.buscarId(id_empresa);
		
		request.setAttribute("empresa", empresa);
		RequestDispatcher rd = request.getRequestDispatcher("./views/empresa/update.jsp");
		
		rd.forward(request, response);
	}
	
	protected void atualizarempresa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		empresa.setNome_empresa(request.getParameter("nome_empresa"));
		empresa.setCodigo_cadastro(request.getParameter("codigo_cadastro"));
		empresa.setTelefone_empresa(Integer.parseInt((request.getParameter("telefone_empresa"))));
		empresa.setEmail_empresa(request.getParameter("email_empresa"));
		empresa.setSenha(request.getParameter("senha"));
		empresa.setId_empresa(Integer.parseInt(request.getParameter("id_empresa")));

		empresadao.atualizarEmpresa(empresa);
		response.sendRedirect("empresa");
	}
	protected void deletarempresa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_empresa = Integer.parseInt(request.getParameter("id_empresa"));
		empresadao.deletarEmpresa(id_empresa);
		response.sendRedirect("empresa");
	}	

}


