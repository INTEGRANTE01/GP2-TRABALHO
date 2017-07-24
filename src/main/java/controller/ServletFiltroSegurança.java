package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Visita;

/* Consulta em
 * http://www.journaldev.com/1933/java-servlet-filter-example-tutorial
 * http://www.concretepage.com/java-ee/jsp-servlet/how-to-use-filter-in-servlet-3-with-webfilter-annotation*/ 

@WebFilter(servletNames = "ServletVisita")

public class ServletFiltroSeguranša implements Filter {	
	
	private Visita visita = new Visita();	
	private String agente;			
  public void init(FilterConfig filterConfig) throws ServletException {
  }

  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    HttpServletRequest res = (HttpServletRequest) request;
    try {
		agente = request.getParameter("agente");
			if (agente==null) {
				HttpSession sessao = res.getSession();
				agente = (String) sessao.getAttribute("nome");
				visita.setAgente(agente);
	          	request.setAttribute("visita", visita);
				RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/visita.jsp");  
			    view.forward(request, response);
			}
		} catch(Exception e){
			e.printStackTrace();  
	}
  }

  public void destroy() {
  }

}
