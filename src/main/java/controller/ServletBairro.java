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

<<<<<<< HEAD
import model.Bairro;
import model.BairroDAO;
=======
import model.Cidade;
import model.CidadeDAO;
import model.Denuncia;
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10

@WebServlet(name = "ServletBairro", urlPatterns = "/bairro")
public class ServletBairro extends HttpServlet {

	private static final long serialVersionUID = 1L;

<<<<<<< HEAD
	private BairroDAO bairroDAO = new BairroDAO();
	private Bairro bairro = new Bairro();
	private PopulaBairro populabairro = new PopulaBairro();
	private String destino = "";
	private int idbairro;
	private String nome_bairro;
	private String nome_cidade;
	private boolean estado = false;	
	private String message;
	private String textopesquisa1;
	private String textopesquisa2;
	private String acao;
	private String tipoform;
=======
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

>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {			
		
		try {
<<<<<<< HEAD
			popularcombos(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		destino ="WEB-INF/bairro.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);			
		
=======
			acao = request.getParameter("acao");
				if (acao != null) {
					if (acao.equalsIgnoreCase("Consultar")) {		
						consultareditarcidade(request, response);
					} else if (acao.equalsIgnoreCase("Excluir")) {
						excluircidade(request, response);
					}				
				}else if(acao==null){
					destino ="WEB-INF/bairro.jsp";
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
		
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
<<<<<<< HEAD
		request.setCharacterEncoding("UTF8");
		estado = false;

		try {
			idbairro = Integer.parseInt(request.getParameter("idbairro"));
			} catch (NumberFormatException number) {
				estado = true;
				try {
					adicionaBairro(request, response);
=======
		request.setCharacterEncoding("UTF8");		
		estado = false;

		try {
			idcidade = Integer.parseInt(request.getParameter("idcidade"));
			} catch (NumberFormatException number) {
				estado = true;
				try {
					adicionaCidade(request, response);
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
				  } catch (SQLException e) {			
					e.printStackTrace();
				}
			}

		if (estado == false) {
<<<<<<< HEAD
			bairro.setIdbairro(idbairro);			
			try {
				if (bairroDAO.existe(bairro) == true) {
					editarBairro(request, response);
					request.setAttribute("message", message);
=======
			cidade.setIdcidade(idcidade);
			try {
				System.out.println(cidadeDAO.existe(cidade));
				if (cidadeDAO.existe(cidade) == true) {
					editarCidade(request, response);
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
				}
			} catch (SQLException e) {			
				e.printStackTrace();
			}			
		}			
		
<<<<<<< HEAD
		try {
			popularcombos(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("message", message);		
=======
		request.setAttribute("message", message);
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
		destino ="WEB-INF/bairro.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
<<<<<<< HEAD
	
	protected void popularcombos(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException, SQLException {
		
		populabairro.popularBairro();
		request.setAttribute("listacidade",populabairro.combocidade);	
		request.setAttribute("listabairro",populabairro.combobairro);
	}
	

	protected void adicionaBairro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
			
		nome_bairro = request.getParameter("bairro");
		nome_cidade = request.getParameter("cidade");
		bairro.setNome_bairro(nome_bairro);
		bairro.setNome_cidade(nome_cidade);

		if (bairroDAO.inserir(bairro) == true)
			
=======

	protected void adicionaCidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
			
		nome_cidade = request.getParameter("cidade");
		cidade.setNome_cidade(nome_cidade);
		if (cidadeDAO.inserir(cidade) == true)
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
			message = "Erro ao Gravar Registro";
		else
			message = "Registro Gravado com Sucesso";

	}

<<<<<<< HEAD
	protected void editarBairro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idbairro = Integer.parseInt(request.getParameter("idbairro"));
		nome_bairro = request.getParameter("bairro");
		nome_cidade = request.getParameter("cidade");
		bairro.setIdbairro(idbairro);
		bairro.setNome_bairro(nome_bairro);
		bairro.setNome_cidade(nome_cidade);
		
		if (bairroDAO.alterar(bairro) == true)
=======
	protected void editarCidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idcidade = Integer.parseInt(request.getParameter("idcidade"));
		nome_cidade = request.getParameter("cidade");
		cidade.setIdcidade(idcidade);
		cidade.setNome_cidade(nome_cidade);		
		if (cidadeDAO.alterar(cidade) == true)
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
			message = "Erro ao Alterar Registro";
		else
			message = "Registro Alterado com Sucesso";
	}
	
<<<<<<< HEAD
	protected void consultareditarbairro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idbairro = Integer.parseInt(request.getParameter("idbairro"));
		bairro.setIdbairro(idbairro);
		bairro = bairroDAO.consultar_editar(bairro);
		request.setAttribute("bairro", bairro);
		destino ="WEB-INF/bairro.jsp";
	}

	protected void excluirbairro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idbairro = Integer.parseInt(request.getParameter("idbairro"));
		bairro.setIdbairro(idbairro);
		bairroDAO.excluir(bairro);
		destino ="WEB-INF/bairro.jsp";
		if (bairroDAO.excluir(bairro) == true)
=======
	protected void buscarcidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		textopesquisa1 = request.getParameter("txtpesquisa1");
		List<Cidade> listacidade = new ArrayList<Cidade>();
		listacidade = cidadeDAO.listar(textopesquisa1);
		request.setAttribute("listacidade", listacidade);
	}

	protected void consultareditarcidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idcidade = Integer.parseInt(request.getParameter("idcidade"));
		cidade.setIdcidade(idcidade);
		cidade = cidadeDAO.consultar_editar(cidade);
		request.setAttribute("cidade", cidade);
		destino ="WEB-INF/cidade.jsp";
	}

	protected void excluircidade(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		idcidade = Integer.parseInt(request.getParameter("idcidade"));
		cidade.setIdcidade(idcidade);
		cidadeDAO.excluir(cidade);
		destino ="WEB-INF/cidade.jsp";
		if (cidadeDAO.excluir(cidade) == true)
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
			message = "Erro ao Excluir Registro";
		else
			message = "Registro Excluido com Sucesso";
		request.setAttribute("message", message);
	}
}