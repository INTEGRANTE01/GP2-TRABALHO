package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TipoImovelDAO extends ConectaBanco {
	
public List<TipoImovel> populaComboTipoImovel() throws SQLException {
		
		List<TipoImovel> combotpimovel = new ArrayList<TipoImovel>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select nome_tpimovel from tpimovel order by nome_tpimovel asc");
		try {
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				TipoImovel tpimovel = new TipoImovel();
				tpimovel.setNome_tpimovel(rs.getString("nome_tpimovel"));
				combotpimovel.add(tpimovel);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return combotpimovel;
	}

	public boolean existe(TipoImovel tpimovel) throws SQLException {
		boolean achou = false;
		
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select id_imovel from tipoimovel where id_imovel = ?");
		try {
			
			pstm.setInt(1, tpimovel.getId_imovel());
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
}