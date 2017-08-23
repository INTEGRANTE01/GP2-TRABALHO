package controller;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Funcao;
import model.FuncaoDAO;

@WebServlet(name="ServletFuncao", urlPatterns = "/funcao")

public class ServletFuncao extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private Funcao funcao = new Funcao();
	private FuncaoDAO funcaoDAO = new FuncaoDAO();
	private int idfuncao;
	private String destino = "";
	private boolean acao;
	private String message;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {						
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF8");
		acao = false;

		try {
			idfuncao = Integer.parseInt(request.getParameter("idfuncao"));
			} catch (NumberFormatException number) {
				acao = true;
				try {
					adicionafuncao(request, response);
					destino = "funcao";
				} catch (SQLException e) {
					e.printStackTrace();				
				}
			}

		if (acao == false) {
			funcao.setIdfuncao(idfuncao);
			try {
				funcaoDAO.existe(funcao);
				if (funcaoDAO.existe(funcao) == true) {
					editarfuncao(request, response);
					destino = "funcao";
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		request.setAttribute("message", message);
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
	
	protected void editarfuncao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
	}
	
	protected void adicionafuncao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
	}
}