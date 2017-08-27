package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DenunciaDAO;
import model.Denuncia;

@WebServlet(name = "ServletDenuncia", urlPatterns = "/denuncia")
public class ServletDenuncia extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private DenunciaDAO denunciaDAO = new DenunciaDAO();
	private Denuncia denuncia = new Denuncia();
	private PopulaDenuncia populadenuncia = new PopulaDenuncia();
	private String destino = "";
	private int iddenuncia;
	private String denunciante;
	private String data_string;
	private Date data_denuncia;
	private String bairro;
	private String rua;
	private String quadra;
	private String lote;
	private String numero;
	private String cidade;
	private String tp_imovel;
	private String desc_den;
	private String message;
	private boolean acao = false;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			popularcombos(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/denuncia.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF8");
		acao = false;

		try {
			iddenuncia = Integer.parseInt(request.getParameter("iddenuncia"));
			} catch (NumberFormatException number) {
				acao = true;
				try {
					adicionaDenuncia(request, response);
					destino = "buscadenuncia";
				  } catch (SQLException e) {			
					e.printStackTrace();
				}
			}

		if (acao == false) {
			denuncia.setIddenuncia(iddenuncia);
			try {
				denunciaDAO.existe(denuncia);				
				if (denunciaDAO.existe(denuncia) == true) {
					editarDenuncia(request, response);
					destino = "buscadenuncia";
				}
			} catch (SQLException e) {			
				e.printStackTrace();
			}			
		}	

		request.setAttribute("message", message);
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
	
	protected void popularcombos(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException, SQLException {
		
		populadenuncia.popularCombosDenuncia();
		request.setAttribute("listacidade",populadenuncia.combocidade);	
		request.setAttribute("listabairro",populadenuncia.combobairro);
		request.setAttribute("listaimovel", populadenuncia.combotipoimovel);
	}
	
	protected void adicionaDenuncia(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		denunciante = request.getParameter("denunciante");
		data_string = request.getParameter("data_denuncia");
		bairro = request.getParameter("bairro");
		rua = request.getParameter("rua");
		quadra = request.getParameter("quadra");
		lote = request.getParameter("lote");
		numero = request.getParameter("numero");
		cidade = request.getParameter("cidade");
		tp_imovel = request.getParameter("tp_imovel");
		desc_den = request.getParameter("desc_den");

		try {

			try {
				SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy hh:mm");
				data_denuncia = (Date) formato.parse(data_string);
				denuncia.setData_denuncia(data_denuncia);
			} catch (Exception e) {
				System.out.println("Erro ao formatar data.");
			}
			denuncia.setDenunciante(denunciante);
			denuncia.setBairro(bairro);
			denuncia.setRua(rua);
			denuncia.setQuadra(quadra);
			denuncia.setLote(lote);
			denuncia.setNumero(numero);
			denuncia.setCidade(cidade);
			denuncia.setTp_imovel(tp_imovel);
			denuncia.setDesc_den(desc_den);

		} catch (Exception e) {
			System.out.println("Parametro incorreto.");
		}
		if (denunciaDAO.inserir(denuncia) == true)
			message = "Erro ao Gravar Registro";
		else
			message = "Registro Gravado com Sucesso";

	}

	protected void editarDenuncia(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		iddenuncia = Integer.parseInt(request.getParameter("iddenuncia"));
		denunciante = request.getParameter("denunciante");
		data_string = request.getParameter("data_denuncia");
		bairro = request.getParameter("bairro");
		rua = request.getParameter("rua");
		quadra = request.getParameter("quadra");
		lote = request.getParameter("lote");
		numero = request.getParameter("numero");
		cidade = request.getParameter("cidade");
		tp_imovel = request.getParameter("tp_imovel");
		desc_den = request.getParameter("desc_den");

		try {

			try {
				SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy hh:mm");
				data_denuncia = (Date) formato.parse(data_string);
				denuncia.setData_denuncia(data_denuncia);
			} catch (Exception e) {
				System.out.println("Erro ao formatar data.");
			}
			denuncia.setIddenuncia(iddenuncia);
			denuncia.setDenunciante(denunciante);
			denuncia.setBairro(bairro);
			denuncia.setRua(rua);
			denuncia.setQuadra(quadra);
			denuncia.setLote(lote);
			denuncia.setNumero(numero);
			denuncia.setCidade(cidade);
			denuncia.setTp_imovel(tp_imovel);
			denuncia.setDesc_den(desc_den);
			

		} catch (Exception e) {
			System.out.println("Parametro incorreto.");
		}

		if (denunciaDAO.alterar(denuncia) == true)
			message = "Erro ao Alterar Registro";
		else
			message = "Registro Alterado com Sucesso";
	}
}