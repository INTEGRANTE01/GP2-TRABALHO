package controller;

import java.util.List;
import java.sql.SQLException;
import java.util.ArrayList;

import model.AcaoCorretiva;
import model.AcaoCorretivaDAO;
import model.Bairro;
import model.BairroDAO;
import model.Cidade;
import model.CidadeDAO;
import model.Estagio;
import model.EstagioDAO;
import model.TipoImovel;
import model.TipoImovelDAO;
import model.Tratamento;
import model.TratamentoDAO;

public class PopulaVisita {
	
	List<Bairro> combobairro = new ArrayList<Bairro>();
	List<Cidade> combocidade = new ArrayList<Cidade>();
	List<TipoImovel> combotipoimovel = new ArrayList<TipoImovel>();
	List<Estagio> comboestagio = new ArrayList<Estagio>();
	List<Tratamento> combotratamento = new ArrayList<Tratamento>();
	List<AcaoCorretiva> combocorretiva = new ArrayList<AcaoCorretiva>();	
	
public void  popularCombosVisita() {	
		
		BairroDAO bairroDAO = new BairroDAO();
		CidadeDAO cidadeDAO = new CidadeDAO();
		TipoImovelDAO imovelDAO = new TipoImovelDAO();
		EstagioDAO estagioDAO = new EstagioDAO();
		TratamentoDAO tratamentoDAO = new TratamentoDAO();
		AcaoCorretivaDAO acaocorretivaDAO = new AcaoCorretivaDAO();
		
		
		try {
			combobairro = bairroDAO.populaComboBairro();
			combocidade = cidadeDAO.populaComboCidade();
			combotipoimovel = imovelDAO.populaComboTipoImovel();
			comboestagio = estagioDAO.populaComboEstagio();
			combotratamento = tratamentoDAO.populaComboTratamento();
			combocorretiva = acaocorretivaDAO.populaComboCorretiva();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}
