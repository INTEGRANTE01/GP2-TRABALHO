package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cidade;
import model.CidadeDAO;
<<<<<<< HEAD
import model.Denuncia;
=======
>>>>>>> 600aed1c8e7a262bfefb1095878c3f94cd41aa47

@WebServlet(name = "ServletCidade", urlPatterns = "/cidade")
public class ServletCidade extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private CidadeDAO cidadeDAO = new CidadeDAO();
	private Cidade cidade = new Cidade();	
	private String destino = "";
	private int idcidade;
	private String nome_cidade;
	private boolean estado = false;
	private String message;
	private String textopesquisa1;
	private String acao;
	private String pesquisa;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
<<<<<<< HEAD
			throws ServletException, IOException {			
=======
			throws ServletException, IOException {

		
		pesquisa = request.getParameter("txtpesquisa1");			
		
		if (pesquisa!="" || pesquisa!=null){
			try {
				buscarcidade(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
>>>>>>> 600aed1c8e7a262bfefb1095878c3f94cd41aa47
		
		try {
			acao = request.getParameter("acao");
				if (acao != null) {
<<<<<<< HEAD
					if (acao.equalsIgnoreCase("Consultar")) {		
						consultareditarcidade(request, response);
					} else if (acao.equalsIgnoreCase("Excluir")) {
						excluircidade(request, response);
					}				
				}else if(acao==null){
					destino ="WEB-INF/cidade.jsp";
				}
			}catch (Exception e){
				e.printStackTrace();
			}finally{
				try {
					buscarcidade(request, response);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}				
			}
		
=======
					if (acao.equalsIgnoreCase("Consultar")) {				
						consultareditarcidade(request, response);						
					} else if (acao.equalsIgnoreCase("Excluir")) {				
						excluircidade(request, response);
					}				
				}
			}catch (Exception e){
				e.printStackTrace();
		}	
		
		destino ="WEB-INF/cidade.jsp";
>>>>>>> 600aed1c8e7a262bfefb1095878c3f94cd41aa47
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF8");		
		estado = false;

		try {
			idcidade = Integer.parseInt(request.getParameter("idcidade"));
			} catch (NumberFormatException number) {
				estado = true;
				try {
					adicionaCidade(request, response);
				  } catch (SQLException e) {			
					e.printStackTrace();
				}
			}

		if (estado == false) {
			cidade.setIdcidade(idcidade);
			try {
				System.out.println(cidadeDAO.existe(cidade));
				if (cidadeDAO.existe(cidade) == true) {
					editarCidade(request, response);
				}
			} catch (SQLException e) {			
				e.printStackTrace();
			}			
<<<<<<< HEAD
		}			
=======
		}
>>>>>>> 600aed1c8e7a262bfefb1095878c3f94cd41aa47
		
		request.setAttribute("message", message);
		destino ="WEB-INF/cidade.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}

	protected void adicionaCidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
			
		nome_cidade = request.getParameter("cidade");
		cidade.setNome_cidade(nome_cidade);
		if (cidadeDAO.inserir(cidade) == true)
			message = "Erro ao Gravar Registro";
		else
			message = "Registro Gravado com Sucesso";

	}

	protected void editarCidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idcidade = Integer.parseInt(request.getParameter("idcidade"));
		nome_cidade = request.getParameter("cidade");
		cidade.setIdcidade(idcidade);
		cidade.setNome_cidade(nome_cidade);		
		if (cidadeDAO.alterar(cidade) == true)
			message = "Erro ao Alterar Registro";
		else
			message = "Registro Alterado com Sucesso";
	}
	
	protected void buscarcidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
<<<<<<< HEAD
		textopesquisa1 = request.getParameter("txtpesquisa1");
		List<Cidade> listacidade = new ArrayList<Cidade>();
		listacidade = cidadeDAO.listar(textopesquisa1);
		request.setAttribute("listacidade", listacidade);
		destino ="WEB-INF/cidade.jsp";

=======
		List<Cidade> listacidade = new ArrayList<Cidade>();
		textopesquisa1 = request.getParameter("txtpesquisa1");
		listacidade = cidadeDAO.listar(textopesquisa1);
		request.setAttribute("listacidade", listacidade);
>>>>>>> 600aed1c8e7a262bfefb1095878c3f94cd41aa47
	}

	protected void consultareditarcidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idcidade = Integer.parseInt(request.getParameter("idcidade"));
		cidade.setIdcidade(idcidade);
		cidade = cidadeDAO.consultar_editar(cidade);
		request.setAttribute("cidade", cidade);
<<<<<<< HEAD
		destino ="WEB-INF/cidade.jsp";
=======
>>>>>>> 600aed1c8e7a262bfefb1095878c3f94cd41aa47
	}

	protected void excluircidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idcidade = Integer.parseInt(request.getParameter("idcidade"));
		cidade.setIdcidade(idcidade);
		cidadeDAO.excluir(cidade);
<<<<<<< HEAD
		destino ="WEB-INF/cidade.jsp";
		if (cidadeDAO.excluir(cidade) == true)
			message = "Erro ao Excluir Registro";
		else
			message = "Registro Excluido com Sucesso";
		request.setAttribute("message", message);
=======
		buscarcidade(request,response);
>>>>>>> 600aed1c8e7a262bfefb1095878c3f94cd41aa47
	}
}