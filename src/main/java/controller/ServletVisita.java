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
import javax.servlet.http.HttpSession;

import model.VisitaDAO;
import model.Funcionario;
import model.Visita;

@WebServlet(name = "ServletVisita", urlPatterns = "/visita")
public class ServletVisita extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private VisitaDAO VisitaDAO = new VisitaDAO();
	private Visita visita = new Visita();
	private String destino = "";
	private int idvisita;
	private String agente;			
	private String data_string;
	private Date data_visita;
	private String bairro;
	private String rua;
	private String quadra;
	private int lote;
	private String numero;
	private int cep;
	private String cidade;
	private String latitude;
	private String longitude;
	private String tp_imovel;
	private String[] estagio;
	private String concatenaEstagio;
	private String tp_larvicida;
	private String ac_corretiva;
	private String local_foco;			
	private String message;
	private boolean acao = false;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
						
			try {
				capturaNomeUsuario(request, response);
				popularcombo(request,response);
			} catch (SQLException e) {
				e.printStackTrace();
			} 	
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/visita.jsp");
			rd.forward(request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF8");
		acao = false;

		try {
			idvisita = Integer.parseInt(request.getParameter("idvisita"));
			if (idvisita==0)
				acao = true;				
		} catch (Exception e) {	
			e.printStackTrace();			
		}		
					
		if (acao == false) {
			visita.setIdvisita(idvisita);
			try {
				VisitaDAO.existe(visita);
				if (VisitaDAO.existe(visita) == true) {
					editarVisita(request, response);
					destino = "buscavisita";			
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (acao == true){
			
			try { 			
				adicionaVisita(request, response);
				destino = "buscavisita";				
			}catch(Exception e){
				e.printStackTrace();
			}			
		}

		request.setAttribute("message", message);
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
	
	protected void capturaNomeUsuario(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException, SQLException {
		Visita visita = new Visita();
		agente = request.getParameter("agente");			
		if (agente==null) {			
			HttpSession sessao = request.getSession();
			agente = (String) sessao.getAttribute("nome");
			visita.setAgente(agente);
			request.setAttribute("visita", visita);
	}
}
	
	protected void popularcombo(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException, SQLException {
		List<Visita> combocidade = new ArrayList<Visita>(); 
		List<Visita> combotipo = new ArrayList<Visita>();
		List<Visita> combobairro = new ArrayList<Visita>();
		try {
			combocidade = VisitaDAO.populaComboCidade();
			combotipo = VisitaDAO.populaComboImovel();
			combobairro = VisitaDAO.populaComboBairro();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("listacidade",combocidade);	
		request.setAttribute("listatipo",combotipo);
		request.setAttribute("listabairro",combobairro);
	}

	protected void adicionaVisita(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		  
		  concatenaEstagio="";
		  agente = request.getParameter("agente");
		  data_string = request.getParameter("data_visita");
		  System.out.println("NO DATA_STRING: "  + data_string);
		  bairro =  request.getParameter("bairro");
		  rua =  request.getParameter("rua");
		  quadra = request.getParameter("quadra");
		  lote = Integer.parseInt(request.getParameter("lote"));
		  numero =  request.getParameter("numero");
		  cep = Integer.parseInt(request.getParameter("cep"));
		  cidade =  request.getParameter("cidade");
		  latitude =  request.getParameter("latitude");
		  longitude =  request.getParameter("longitude");
		  tp_imovel =  request.getParameter("tp_imovel");
		  estagio =  request.getParameterValues("estagio");
		  tp_larvicida =  request.getParameter("tp_larvicida");
		  ac_corretiva =  request.getParameter("ac_corretiva");
		  local_foco =  request.getParameter("local_foco");

		try {
			
			visita.setAgente(agente);
          	SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy hh:mm");
            data_visita = (Date) formato.parse(data_string);                   
            visita.setData_visita(data_visita); 
            visita.setBairro(bairro);						
			visita.setRua(rua);
			visita.setQuadra(quadra);
			visita.setLote(lote);
			visita.setNumero(numero);
			visita.setCep(cep);
			visita.setCidade(cidade);  
			visita.setLatitude(latitude);
			visita.setLongitude(longitude);
			visita.setTp_imovel(tp_imovel);
			for (int i=0;i<estagio.length;i++){
				
				if(i==estagio.length-1)
					concatenaEstagio+=estagio[i];						
				else
					concatenaEstagio+=estagio[i] + ",";
			}
			visita.setEstagio(concatenaEstagio);			
			visita.setTp_larvicida(tp_larvicida);
			visita.setAc_corretiva(ac_corretiva);
			visita.setLocal_foco(local_foco);

		} catch (Exception e) {
			System.out.println("Parametro incorreto.");
		}
		if (VisitaDAO.inserir(visita) == true)
			message = "Erro ao Gravar Registro";
		else
			message = "Registro Gravado com Sucesso";
		}

	protected void editarVisita(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		   concatenaEstagio="";
		   agente = request.getParameter("agente");
		   data_string = request.getParameter("data_visita");
		   bairro =  request.getParameter("bairro");
		   rua =  request.getParameter("rua");
		   quadra = request.getParameter("quadra");
		   lote = Integer.parseInt(request.getParameter("lote"));
		   numero =  request.getParameter("numero");
		   cep = Integer.parseInt(request.getParameter("cep"));
		   cidade =  request.getParameter("cidade");
		   latitude =  request.getParameter("latitude");
		   longitude =  request.getParameter("longitude");
		   tp_imovel =  request.getParameter("tp_imovel");
	       estagio =  request.getParameterValues("estagio");
		   tp_larvicida =  request.getParameter("tp_larvicida");
		   ac_corretiva =  request.getParameter("ac_corretiva");
		   local_foco =  request.getParameter("local_foco");
		  
		try {
			
			visita.setAgente(agente);
	        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy hh:mm");
	        data_visita = (Date) formato.parse(data_string);                   
	        visita.setData_visita(data_visita);     		
			visita.setIdvisita(idvisita);
			visita.setBairro(bairro);					
			visita.setRua(rua);
			visita.setQuadra(quadra);
			visita.setLote(lote);
			visita.setNumero(numero);
			visita.setCep(cep);
			visita.setCidade(cidade);
			visita.setLatitude(latitude);
			visita.setLongitude(longitude);
			visita.setTp_imovel(tp_imovel);
			for (int i=0;i<estagio.length;i++){
				
				if(i==estagio.length-1)
					concatenaEstagio+=estagio[i];						
				else
					concatenaEstagio+=estagio[i] + ",";
			}
			visita.setEstagio(concatenaEstagio);
			visita.setTp_larvicida(tp_larvicida);
			visita.setAc_corretiva(ac_corretiva);
			visita.setLocal_foco(local_foco);

		} catch (Exception e) {
			System.out.println("Parametro incorreto.");
		}

		if (VisitaDAO.alterar(visita) == true)
			message = "Erro ao Alterar Registro";
		else
			message = "Registro Alterado com Sucesso";
	}
}