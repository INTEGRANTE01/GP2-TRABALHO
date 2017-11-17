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
import model.Notificacao;
import model.NotificacaoDAO;
import model.Visita;

@WebServlet(name = "ServletVisita", urlPatterns = "/visita")
public class ServletVisita extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private VisitaDAO VisitaDAO = new VisitaDAO();
	private Visita visita = new Visita();
	private NotificacaoDAO NotificacaoDAO = new NotificacaoDAO();
	private Notificacao notificacao = new Notificacao();
	private PopulaVisita populavisita = new PopulaVisita();
	private String destino = "";
	private int idvisita;
	private int idnotificacao;
	private String agente;			
	private String data_string;
	private Date data_visita;
	private String rua;
	private String quadra;
	private String lote;
	private String numero;
	private String latitude;
	private String longitude;
	private String bairro;
	private String cidade;
	private String tp_imovel;
	private String[] estagio;	
	private String[] tp_larvicida;
	private String[] ac_corretiva;
	private String local_foco;			
	private String message;
	private String concatenaEstagio;
	private String concatenaLarvicida;
	private String concatenaAccorretiva;
	
	private boolean acao = false;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
						
			try {
				capturaNomeUsuario(request, response);
				popularcombos(request,response);
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

	protected void popularcombos(HttpServletRequest request,
		    HttpServletResponse response) throws ServletException, IOException, SQLException {
		
		populavisita.popularCombosVisita();		
		request.setAttribute("listacidade",populavisita.combocidade);	
		request.setAttribute("listabairro",populavisita.combobairro);
		request.setAttribute("listaimovel",populavisita.combotipoimovel);
		request.setAttribute("listaestagio",populavisita.comboestagio);
		request.setAttribute("listatratamento",populavisita.combotratamento);
		request.setAttribute("listacorretiva",populavisita.combocorretiva);
	}

	protected void adicionaVisita(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		  
		  concatenaEstagio="";
		  concatenaLarvicida="";
		  concatenaAccorretiva="";
		  try {
				idnotificacao = Integer.parseInt(request.getParameter("idnotificacao"));				
		  } catch (Exception e) {	
				e.printStackTrace();			
		  }	
		  agente = request.getParameter("agente");
		  data_string = request.getParameter("data_visita");
		  System.out.println("NO DATA_STRING: "  + data_string);
		  bairro =  request.getParameter("bairro");
		  rua =  request.getParameter("rua");
		  quadra = request.getParameter("quadra");
		  lote = request.getParameter("lote");
		  numero =  request.getParameter("numero");
		  cidade =  request.getParameter("cidade");
		  latitude =  request.getParameter("latitude");
		  longitude =  request.getParameter("longitude");
		  tp_imovel =  request.getParameter("tp_imovel");
		  estagio =  request.getParameterValues("estagio");
		  tp_larvicida =  request.getParameterValues("tp_larvicida");
		  ac_corretiva =  request.getParameterValues("ac_corretiva");
		  local_foco =  request.getParameter("local_foco");

		try {
			
			visita.setIdnotificacao(idnotificacao);
			visita.setAgente(agente);
          	SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy hh:mm");
            data_visita = (Date) formato.parse(data_string);                   
            visita.setData_visita(data_visita); 
            visita.setBairro(bairro);						
			visita.setRua(rua);
			visita.setQuadra(quadra);
			visita.setLote(lote);
			visita.setNumero(numero);
			visita.setCidade(cidade);  
			visita.setLatitude(latitude);
			visita.setLongitude(longitude);
			visita.setTp_imovel(tp_imovel);
			notificacao.setIdnotificacao(idnotificacao);
			
			for (int i=0;i<estagio.length;i++){
				
				if(i==estagio.length-1)
					concatenaEstagio+=estagio[i];						
				else
					concatenaEstagio+=estagio[i] + ",";
			}
			visita.setEstagio(concatenaEstagio);
			
			for (int i=0;i<tp_larvicida.length;i++){
				
				if(i==tp_larvicida.length-1)
					concatenaLarvicida+=tp_larvicida[i];						
				else
					concatenaLarvicida+=tp_larvicida[i] + ",";
			}
			visita.setTp_larvicida(concatenaLarvicida);
			
			for (int i=0;i<ac_corretiva.length;i++){
				
				if(i==ac_corretiva.length-1)
					concatenaAccorretiva+=ac_corretiva[i];						
				else
					concatenaAccorretiva+=ac_corretiva[i] + ",";
			}
			visita.setAc_corretiva(concatenaAccorretiva);
			visita.setLocal_foco(local_foco);

		} catch (Exception e) {
			System.out.println("Parametro incorreto.");
		}
		if (VisitaDAO.inserir(visita) == true)
			message = "Erro ao Gravar Registro";
		else
			message = "Registro Gravado com Sucesso";
		
		if (VisitaDAO.alterarnotificacao(notificacao) == true) {
			message = "Erro ao Validadar Notificacao";
		}				
		System.out.println(notificacao.getIdnotificacao());			

	}
	    

	protected void editarVisita(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
		   concatenaEstagio="";
		   concatenaLarvicida="";
		   concatenaAccorretiva="";		   
		   agente = request.getParameter("agente");
		   data_string = request.getParameter("data_visita");
		   bairro =  request.getParameter("bairro");
		   rua =  request.getParameter("rua");
		   quadra = request.getParameter("quadra");
		   lote = request.getParameter("lote");
		   numero =  request.getParameter("numero");
		   cidade =  request.getParameter("cidade");
		   latitude =  request.getParameter("latitude");
		   longitude =  request.getParameter("longitude");
		   tp_imovel =  request.getParameter("tp_imovel");
	       estagio =  request.getParameterValues("estagio");
		   tp_larvicida =  request.getParameterValues("tp_larvicida");
		   ac_corretiva =  request.getParameterValues("ac_corretiva");
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
			
			for (int i=0;i<tp_larvicida.length;i++){
				
				if(i==tp_larvicida.length-1)
					concatenaLarvicida+=tp_larvicida[i];						
				else
					concatenaLarvicida+=tp_larvicida[i] + ",";
			}
			visita.setTp_larvicida(concatenaLarvicida);
			
			for (int i=0;i<ac_corretiva.length;i++){
				
				if(i==ac_corretiva.length-1)
					concatenaAccorretiva+=ac_corretiva[i];						
				else
					concatenaAccorretiva+=ac_corretiva[i] + ",";
			}
			visita.setAc_corretiva(concatenaAccorretiva);
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