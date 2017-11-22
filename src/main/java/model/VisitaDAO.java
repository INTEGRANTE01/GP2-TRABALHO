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
 * Classe de PersistÃªncia de dados dos objetos de Visita
 * é "filha" da Classe ConectaBanco. 
 *
 */

public class VisitaDAO extends ConectaBanco {
	
	public boolean alterar(Visita visita) throws SQLException {
		boolean erro = false;
		Connection conexao = getConexao();
		PreparedStatement pstmt = conexao
				.prepareStatement("Update visita SET agente = ?, data_visita = ?, bairro = ?, rua = ?, quadra = ?, "
								+ "lote = ?, numero = ?, cidade = ?, latitude = ?, longitude = ?, "
								+ "tp_imovel = ?, estagio = ?, tp_larvicida = ?, ac_corretiva = ?, local_foco = ?, "
								+ "dp1 = ?, dp2 = ?, dp3 = ?, dp4 = ?, dp5 = ?, dp6 = ?, dp7 = ?, "
								+ "qt1 = ?, qt2 = ?, qt3 = ?, qt4 = ?, qt5 = ?, qt6 = ?, qt7 = ? WHERE idvisita = ? ");
		try {
			pstmt.setString(1, visita.getAgente());			
			pstmt.setTimestamp(2,  new java.sql.Timestamp(visita.getData_visita().getTime()));  
			pstmt.setString(3, visita.getBairro());
			pstmt.setString(4, visita.getRua());
			pstmt.setString(5, visita.getQuadra());
			pstmt.setString(6, visita.getLote());
			pstmt.setString(7, visita.getNumero());
			pstmt.setString(8, visita.getCidade());
			pstmt.setString(9, visita.getLatitude());
			pstmt.setString(10, visita.getLongitude());
			pstmt.setString(11, visita.getTp_imovel());
			pstmt.setString(12, visita.getEstagio());
			pstmt.setString(13, visita.getTp_larvicida());
			pstmt.setString(14, visita.getAc_corretiva());
			pstmt.setString(15, visita.getLocal_foco());			
			pstmt.setInt(16, visita.getDp1());
			pstmt.setInt(17, visita.getDp2());
			pstmt.setInt(18, visita.getDp3());
			pstmt.setInt(19, visita.getDp4());
			pstmt.setInt(20, visita.getDp5());
			pstmt.setInt(21, visita.getDp6());
			pstmt.setInt(22, visita.getDp7());
			pstmt.setInt(23, visita.getQt1());
			pstmt.setInt(24, visita.getQt2());
			pstmt.setInt(25, visita.getQt3());
			pstmt.setInt(26, visita.getQt4());
			pstmt.setInt(27, visita.getQt5());
			pstmt.setInt(28, visita.getQt6());
			pstmt.setInt(29, visita.getQt7());	
			pstmt.setInt(30, visita.getIdvisita());
			
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
	
	public boolean alterarnotificacao(Notificacao notificacao ) throws SQLException {
		Connection conexao = getConexao();
		PreparedStatement pstmt = conexao
				.prepareStatement("update notificacao set verificado = true WHERE idnotificacao = ?");
		boolean erro = false;
		try {
			pstmt.setInt(1, notificacao.getIdnotificacao());					
			pstmt.execute();
			}catch (Exception e) {
				e.printStackTrace();
				erro = true;
				System.out.println("ERRO AO ALTERAR NOTIFICACAO");			

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
			System.out.println("ERRO AO BUSCAR PARA EDICAO");			
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
				.prepareStatement("Insert into	visita (agente, data_visita, bairro, rua, quadra,lote, numero, cidade, latitude, "
						+ "longitude,tp_imovel, estagio, tp_larvicida, ac_corretiva, local_foco, idnotificacao, "
						+ "dp1, dp2, dp3, dp4, dp5, dp6, dp7,"
						+ "qt1, qt2, qt3, qt4, qt5, qt6, qt7, status)"
						+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
		try {						
			pstm.setString(1, visita.getAgente());			
			pstm.setTimestamp(2,  new java.sql.Timestamp(visita.getData_visita().getTime())); 
			pstm.setString(3, visita.getBairro());
			pstm.setString(4, visita.getRua());
			pstm.setString(5, visita.getQuadra());
			pstm.setString(6, visita.getLote());
			pstm.setString(7, visita.getNumero());
			pstm.setString(8, visita.getCidade());
			pstm.setString(9, visita.getLatitude());
			pstm.setString(10, visita.getLongitude());
			pstm.setString(11, visita.getTp_imovel());
			if (visita.getEstagio() == null || visita.getEstagio().equals("")) 
				visita.setEstagio("N�o encontrado");						
			pstm.setString(12, visita.getEstagio());
			pstm.setString(13, visita.getTp_larvicida());
			pstm.setString(14, visita.getAc_corretiva());
			pstm.setString(15, visita.getLocal_foco());	
			pstm.setInt(16, visita.getIdnotificacao());
			pstm.setInt(17, visita.getDp1());					
			pstm.setInt(18, visita.getDp2());
			pstm.setInt(19, visita.getDp3());
			pstm.setInt(20, visita.getDp4());
			pstm.setInt(21, visita.getDp5());
			pstm.setInt(22, visita.getDp6());
			pstm.setInt(23, visita.getDp7());			
			pstm.setInt(24, visita.getQt1());
			pstm.setInt(25, visita.getQt2());
			pstm.setInt(26, visita.getQt3());
			pstm.setInt(27, visita.getQt4());
			pstm.setInt(28, visita.getQt5());
			pstm.setInt(29, visita.getQt6());
			pstm.setInt(30, visita.getQt7());
			pstm.setString(31, visita.getStatus());
			
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
			pstm.setString(5, "%" + par_estagio +"%");
			pstm.setString(6, "%" + par_rua +"%");
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Visita visita = new Visita();				
				visita.setIdvisita(rs.getInt("idvisita"));
				visita.setAgente(rs.getString("agente"));
				visita.setData_visita(rs.getTimestamp("data_visita"));
				visita.setCidade(rs.getString("cidade"));
				visita.setBairro(rs.getString("bairro"));
				visita.setRua(rs.getString("rua"));
				visita.setQuadra(rs.getString("quadra"));
				visita.setLote(rs.getString("lote"));				
				visita.setTp_imovel(rs.getString("tp_imovel"));
				visita.setEstagio(rs.getString("estagio"));
				visita.setAc_corretiva(rs.getString("ac_corretiva"));
				visita.setStatus(rs.getString("status"));
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
				visita.setLote(rs.getString("lote"));
				visita.setNumero(rs.getString("numero"));
				visita.setCidade(rs.getString("cidade"));
				visita.setLatitude(rs.getString("latitude"));
				visita.setLongitude(rs.getString("longitude"));
				visita.setTp_imovel(rs.getString("tp_imovel"));
				visita.setEstagio(rs.getString("estagio"));
				visita.setTp_larvicida(rs.getString("tp_larvicida"));
				visita.setAc_corretiva(rs.getString("ac_corretiva"));
				visita.setLocal_foco(rs.getString("local_foco"));
				visita.setDp1(rs.getInt("dp1"));
				visita.setDp2(rs.getInt("dp2"));
				visita.setDp3(rs.getInt("dp3"));
				visita.setDp4(rs.getInt("dp4"));
				visita.setDp5(rs.getInt("dp5"));
				visita.setDp6(rs.getInt("dp6"));
				visita.setDp7(rs.getInt("dp7"));
				visita.setQt1(rs.getInt("qt1"));
				visita.setQt2(rs.getInt("qt2"));
				visita.setQt3(rs.getInt("qt3"));
				visita.setQt4(rs.getInt("qt4"));
				visita.setQt5(rs.getInt("qt5"));
				visita.setQt6(rs.getInt("qt6"));
				visita.setQt7(rs.getInt("qt7"));
				visita.setStatus(rs.getString("status"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
		}
		return visita;
	}
}
