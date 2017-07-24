package model;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.Denuncia;

/**
 * 
 * Classe de Persistência de dados dos objetos de Denuncia � "filha" da Classe
 * ConectaBanco.
 *
 */

public class DenunciaDAO extends ConectaBanco {
	
	public boolean alterar(Denuncia denuncia) throws SQLException {
		boolean erro = false;
		Connection conexao = getConexao();
		PreparedStatement pstmt = conexao
				.prepareStatement("Update denuncia SET data_denuncia = ?, bairro = ?, rua = ?, quadra = ?, lote = ?, numero = ?, cidade = ?, tp_imovel = ?, desc_den = ?, denunciante = ?, cep = ? WHERE iddenuncia = ? ");
		try {			
			pstmt.setTimestamp(1,  new java.sql.Timestamp(denuncia.getData_denuncia().getTime()));  
			pstmt.setString(2, denuncia.getBairro());
			pstmt.setString(3, denuncia.getRua());
			pstmt.setString(4, denuncia.getQuadra());
			pstmt.setInt(5, denuncia.getLote());
			pstmt.setString(6, denuncia.getNumero());
			pstmt.setString(7, denuncia.getCidade());
			pstmt.setString(8, denuncia.getTp_imovel());
			pstmt.setString(9, denuncia.getDesc_den());
			pstmt.setString(10, denuncia.getDenunciante());
			pstmt.setString(11, denuncia.getCep());
			pstmt.setInt(12, denuncia.getIddenuncia());
			pstmt.execute();
			}catch (Exception e) {
				erro = true;					
			}finally{
				pstmt.close();
				conexao.close();			
			}
		return erro;
	}

	public boolean excluir(Denuncia denuncia) throws SQLException {
		boolean erro = false;
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Delete from denuncia where iddenuncia = ?");
		try {			
			pstm.setInt(1, denuncia.getIddenuncia());
			pstm.execute();
		} catch (Exception e) {
			erro = true;
		}finally{
			pstm.close();
			conexao.close();			
		}
		return erro;
	}

	public boolean existe(Denuncia denuncia) throws SQLException {
		boolean achou = false;
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select iddenuncia from denuncia where iddenuncia = ?");
		try {			
			pstm.setInt(1, denuncia.getIddenuncia());
			ResultSet rs = pstm.executeQuery();
			
			if (rs.next()) {
				achou = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERRO AO BUSCAR PARA EDI��O");			
		}finally{
			pstm.close();
			conexao.close();			
	}
		return achou;
	}

	public boolean inserir(Denuncia denuncia) throws SQLException {
		boolean erro = false;
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Insert into	denuncia (data_denuncia, bairro, rua, quadra, lote, numero, cidade, tp_imovel, desc_den, denunciante, cep) values	(?,?,?,?,?,?,?,?,?,?,?)");
		try {			
			pstm.setTimestamp(1,  new java.sql.Timestamp(denuncia.getData_denuncia().getTime()));  
			pstm.setString(2, denuncia.getBairro());
			pstm.setString(3, denuncia.getRua());
			pstm.setString(4, denuncia.getQuadra());
			pstm.setInt(5, denuncia.getLote());
			pstm.setString(6, denuncia.getNumero());
			pstm.setString(7, denuncia.getCidade());
			pstm.setString(8, denuncia.getTp_imovel());
			pstm.setString(9, denuncia.getDesc_den());
			pstm.setString(10, denuncia.getDenunciante());
			pstm.setString(11, denuncia.getCep());
			pstm.execute();
		} catch (Exception e) {
			erro = true;	
		}finally{
			pstm.close();
			conexao.close();			
		}
		return erro;
	}

	public List<Denuncia> listar(String par_denunciante, String par_bairo, String par_cidade, String par_tp_imovel) throws SQLException {
		List<Denuncia> lista = new ArrayList<Denuncia>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select * from denuncia where denunciante like ? and bairro like ? and cidade like ? and tp_imovel like ? order by data_denuncia asc");
		try {					
			pstm.setString(1, "%" + par_denunciante +"%");
			pstm.setString(2, "%" + par_bairo +"%");
			pstm.setString(3, "%" + par_cidade +"%");
			pstm.setString(4, "%" + par_tp_imovel +"%");
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Denuncia denuncia = new Denuncia();
				denuncia.setIddenuncia(rs.getInt("iddenuncia"));
				denuncia.setData_denuncia(rs.getTimestamp("data_denuncia"));
				denuncia.setBairro(rs.getString("bairro"));
				denuncia.setRua(rs.getString("rua"));
				denuncia.setLote(rs.getInt("lote"));
				denuncia.setNumero(rs.getString("numero"));
				denuncia.setCidade(rs.getString("cidade"));
				denuncia.setTp_imovel(rs.getString("tp_imovel"));
				denuncia.setDesc_den(rs.getString("desc_den"));
				denuncia.setDenunciante(rs.getString("denunciante"));
				denuncia.setCep(rs.getString("cep"));
				lista.add(denuncia);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
		}
		return lista;
	}
	
	public List<Denuncia> listar() throws SQLException {
		List<Denuncia> lista = new ArrayList<Denuncia>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select * from denuncia order by data_denuncia asc");
		try {
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Denuncia denuncia = new Denuncia();
				denuncia.setIddenuncia(rs.getInt("iddenuncia"));
				denuncia.setData_denuncia(rs.getTimestamp("data_denuncia"));
				denuncia.setBairro(rs.getString("bairro"));
				denuncia.setRua(rs.getString("rua"));
				denuncia.setLote(rs.getInt("lote"));
				denuncia.setNumero(rs.getString("numero"));
				denuncia.setCidade(rs.getString("cidade"));
				denuncia.setTp_imovel(rs.getString("tp_imovel"));
				denuncia.setDesc_den(rs.getString("desc_den"));
				denuncia.setDenunciante(rs.getString("denunciante"));
				denuncia.setCep(rs.getString("cep"));
				lista.add(denuncia);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return lista;
	}

	public Denuncia consultar_editar(Denuncia denuncia) throws SQLException {
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao
				.prepareStatement("Select * from denuncia where iddenuncia = ?");
		try {			
			pstm.setInt(1, denuncia.getIddenuncia());
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				denuncia.setIddenuncia(rs.getInt("iddenuncia"));
				denuncia.setData_denuncia(rs.getTimestamp("data_denuncia"));
				denuncia.setBairro(rs.getString("bairro"));
				denuncia.setRua(rs.getString("rua"));
				denuncia.setLote(rs.getInt("lote"));
				denuncia.setQuadra(rs.getString("quadra"));
				denuncia.setNumero(rs.getString("numero"));
				denuncia.setCidade(rs.getString("cidade"));
				denuncia.setTp_imovel(rs.getString("tp_imovel"));
				denuncia.setDesc_den(rs.getString("desc_den"));
				denuncia.setDenunciante(rs.getString("denunciante"));
				denuncia.setCep(rs.getString("cep"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return denuncia;
	}
}