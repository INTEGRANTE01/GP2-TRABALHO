package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;
import model.Visita;

/**
 * 
 * Classe de PersistÃƒÂªncia de dados dos objetos de Visita
 * Ã© "filha" da Classe ConectaBanco. 
 *
 */

public class VisitaDAO extends ConectaBanco {
	
	public boolean alterar(Visita visita) throws SQLException {
		Connection conexao = getConexao();
		PreparedStatement pstmt = conexao
				.prepareStatement("Update visita SET agente = ?, data_visita = ?, bairro = ?, rua = ?, quadra = ?, "
								+ "lote = ?, numero = ?, cep = ?, cidade = ?, latitude = ?, longitude = ?, "
								+ "tp_imovel = ?, estagio = ?, tp_larvicida = ?, ac_corretiva = ?, local_foco = ? WHERE idvisita = ? ");
		boolean erro = false;
		try {
			pstmt.setString(1, visita.getAgente());			
			pstmt.setTimestamp(2,  new java.sql.Timestamp(visita.getData_visita().getTime()));  
			pstmt.setString(3, visita.getBairro());
			pstmt.setString(4, visita.getRua());
			pstmt.setString(5, visita.getQuadra());
			pstmt.setInt(6, visita.getLote());
			pstmt.setString(7, visita.getNumero());
			pstmt.setInt(8, visita.getCep());
			pstmt.setString(9, visita.getCidade());
			pstmt.setString(10, visita.getLatitude());
			pstmt.setString(11, visita.getLongitude());
			pstmt.setString(12, visita.getTp_imovel());
			pstmt.setString(13, visita.getEstagio());
			pstmt.setString(14, visita.getTp_larvicida());
			pstmt.setString(15, visita.getAc_corretiva());
			pstmt.setString(16, visita.getLocal_foco());			
			pstmt.setInt(17, visita.getIdvisita());
			pstmt.execute();
			}catch (Exception e) {
				e.printStackTrace();
				erro = true;
				System.out.println("ERRO AO ALTERAR");			

			}finally{
				pstmt.close();
				conexao.close();			
		}
		return erro;
	}

	public boolean excluir(Visita visita) throws SQLException {
		boolean erro = false;
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Delete from visita where idvisita = ?");
		try {
			pstm.setInt(1, visita.getIdvisita());
			pstm.execute();
		} catch (Exception e) {
			e.printStackTrace();
			erro = true;
			System.out.println("ERRO AO EXCLUIR");			

		}finally{
			pstm.close();
			conexao.close();			
		}
		return erro;
	}

	public boolean existe(Visita visita) throws SQLException {
		boolean achou = false;
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select idvisita from visita where idvisita = ?");
		try {			
			//if(pstm==null)				
			pstm.setInt(1, visita.getIdvisita());
			ResultSet rs = pstm.executeQuery();
			
			if (rs.next()) {
				achou = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERRO AO BUSCAR PARA EDIÇÃO");			
		}finally{
			pstm.close();
			conexao.close();			
		}
		return achou;
	}

	public boolean inserir(Visita visita) throws SQLException {
		boolean erro = false;
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Insert into	visita (agente, data_visita, bairro, rua, quadra,lote, numero, cep, cidade, latitude, "
						+ "longitude,tp_imovel, estagio, tp_larvicida, ac_corretiva, local_foco) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		try {						
			pstm.setString(1, visita.getAgente());			
			pstm.setTimestamp(2,  new java.sql.Timestamp(visita.getData_visita().getTime())); 
			pstm.setString(3, visita.getBairro());
			pstm.setString(4, visita.getRua());
			pstm.setString(5, visita.getQuadra());
			pstm.setInt(6, visita.getLote());
			pstm.setString(7, visita.getNumero());
			pstm.setInt(8, visita.getCep());
			pstm.setString(9, visita.getCidade());
			pstm.setString(10, visita.getLatitude());
			pstm.setString(11, visita.getLongitude());
			pstm.setString(12, visita.getTp_imovel());
			pstm.setString(13, visita.getEstagio());
			pstm.setString(14, visita.getTp_larvicida());
			pstm.setString(15, visita.getAc_corretiva());
			pstm.setString(16, visita.getLocal_foco());	
			pstm.execute();
		} catch (Exception e) {
			erro = true;	
			e.printStackTrace();
			System.out.println("ERRO AO INSERIR");			

		}finally{
			pstm.close();
			conexao.close();			
		}
		return erro;
	}

	public List<Visita> listar(String agente, String par_bairro, String par_cidade, String par_tipo, String par_estagio,  String par_rua) throws SQLException {
		
		List<Visita> lista = new ArrayList<Visita>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select * from visita where agente like ? and bairro like ? and cidade like ? and tp_imovel like ? and estagio like ? and rua like ? order by cidade asc");
		try {						
			pstm.setString(1, "%" + agente +"%");
			pstm.setString(2, par_bairro +"%");
			pstm.setString(3, par_cidade +"%");
			pstm.setString(4, "%" + par_tipo +"%");
			pstm.setString(5, par_estagio +"%");
			pstm.setString(6, "%" + par_rua +"%");
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Visita visita = new Visita();				
				visita.setIdvisita(rs.getInt("idvisita"));
				visita.setAgente(rs.getString("agente"));
				visita.setData_visita(rs.getTimestamp("data_visita"));
				visita.setCidade(rs.getString("cidade"));
				visita.setBairro(rs.getString("bairro"));	
				visita.setTp_imovel(rs.getString("tp_imovel"));
				visita.setEstagio(rs.getString("estagio"));
				visita.setTp_larvicida(rs.getString("tp_larvicida"));
				visita.setAc_corretiva(rs.getString("ac_corretiva"));
				visita.setLocal_foco(rs.getString("local_foco"));
				lista.add(visita);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return lista;
	}
	
	public List<Visita> listarmapa(String par_bairro, String par_cidade, String par_tipo, String par_estagio) throws SQLException {
		List<Visita> lista = new ArrayList<Visita>();
	Connection conexao = getConexao();
	PreparedStatement pstm = conexao
			.prepareStatement("Select latitude, longitude from visita where bairro like ? and cidade like ? and tp_imovel like ? and estagio like ? order by bairro asc");
	try {
		/*Statement stm = conexao.createStatement();*/
		
		pstm.setString(1, par_bairro +"%");
		pstm.setString(2, par_cidade +"%");
		pstm.setString(3, "%" + par_tipo +"%");
		pstm.setString(4, "%" + par_estagio +"%");
		ResultSet rs = pstm.executeQuery();
		while (rs.next()) {
			Visita visita = new Visita();
			visita.setLongitude(rs.getString("longitude"));
			visita.setLatitude(rs.getString("latitude"));				
			lista.add(visita);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		pstm.close();
		conexao.close();			
	}
	return lista;
}

public List<Visita> listarmapa() throws SQLException {
	
	List<Visita> lista = new ArrayList<Visita>();
	Connection conexao = getConexao();
	PreparedStatement pstm = conexao
			.prepareStatement("Select * from visita order by bairro asc");
	try {		
		ResultSet rs = pstm.executeQuery();
		while (rs.next()) {
			Visita visita = new Visita();
			visita.setBairro(rs.getString("bairro"));
			visita.setCidade(rs.getString("cidade"));
			visita.setEstagio(rs.getString("estagio"));
			visita.setLongitude(rs.getString("longitude"));
			visita.setLatitude(rs.getString("latitude"));					
			lista.add(visita);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		pstm.close();
		conexao.close();			
	}
	return lista;
}
	
public List<Visita> listar() throws SQLException {		
		List<Visita> lista = new ArrayList<Visita>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select * from visita order by bairro asc");
		try {
			/*Statement stm = conexao.createStatement();*/
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Visita visita = new Visita();
				visita.setIdvisita(rs.getInt("idvisita"));
				visita.setAgente(rs.getString("agente"));
				visita.setBairro(rs.getString("bairro"));
				visita.setCidade(rs.getString("cidade"));
				visita.setTp_imovel(rs.getString("tp_imovel"));
				visita.setEstagio(rs.getString("estagio"));				
				lista.add(visita);
			}
			pstm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
		}
		return lista;
	}

	public Visita consultar_editar(Visita visita) throws SQLException {
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select * from visita where idvisita = ?");
		try {		
			pstm.setInt(1, visita.getIdvisita());
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				visita.setIdvisita(rs.getInt("idvisita"));
				visita.setAgente(rs.getString("agente"));    
				visita.setData_visita(rs.getTimestamp("data_visita"));
				visita.setBairro(rs.getString("bairro"));
				visita.setRua(rs.getString("rua"));
				visita.setQuadra(rs.getString("quadra"));
				visita.setLote(rs.getInt("lote"));
				visita.setNumero(rs.getString("numero"));
				visita.setCep(rs.getInt("cep"));
				visita.setCidade(rs.getString("cidade"));
				visita.setLatitude(rs.getString("latitude"));
				visita.setLongitude(rs.getString("longitude"));
				visita.setTp_imovel(rs.getString("tp_imovel"));
				visita.setEstagio(rs.getString("estagio"));
				visita.setTp_larvicida(rs.getString("tp_larvicida"));
				visita.setAc_corretiva(rs.getString("ac_corretiva"));
				visita.setLocal_foco(rs.getString("local_foco"));
			}
			pstm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
		}
		return visita;
	}
public List<Visita> populaComboImovel() throws SQLException {
		
		List<Visita> combotipo = new ArrayList<Visita>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select distinct(tp_imovel) from visita order by tp_imovel asc");
		try {		
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Visita visita = new Visita();
				visita.setTp_imovel(rs.getString("tp_imovel"));
				combotipo.add(visita);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return combotipo;
	}

public List<Visita> populaComboCidade() throws SQLException {
	
	List<Visita> combocidade = new ArrayList<Visita>();
	Connection conexao = getConexao();
	PreparedStatement pstm = conexao.prepareStatement("Select distinct(cidade) from visita order by cidade asc");
		try {		
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Visita visita = new Visita();
				visita.setCidade(rs.getString("cidade"));
				combocidade.add(visita);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return combocidade;
}

public List<Visita> populaComboBairro() throws SQLException {
	
	List<Visita> combobairro = new ArrayList<Visita>();
	Connection conexao = getConexao();
	PreparedStatement pstm = conexao.prepareStatement("Select distinct(bairro) from visita order by bairro asc");
		try {		
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Visita visita = new Visita();
				visita.setBairro(rs.getString("bairro"));
				combobairro.add(visita);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
		}
		return combobairro;
	}	
public List<Visita> populaComboEstagio() throws SQLException {
	
	List<Visita> comboestagio = new ArrayList<Visita>();
	Connection conexao = getConexao();
	PreparedStatement pstm = conexao.prepareStatement("Select distinct(estagio) from visita order by estagio asc");
		try {		
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Visita visita = new Visita();
				visita.setEstagio(rs.getString("estagio"));
				comboestagio.add(visita);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
		}
		return comboestagio;
	}	
}
