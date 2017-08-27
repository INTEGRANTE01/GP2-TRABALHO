package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AcaoCorretivaDAO extends ConectaBanco {
	
public List<AcaoCorretiva> populaComboCorretiva() throws SQLException {
		
		List<AcaoCorretiva> comboCorretiva = new ArrayList<AcaoCorretiva>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select nome_ac_corretiva from ac_corretiva order by nome_ac_corretiva asc");
		try {
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				AcaoCorretiva acaocorretiva = new AcaoCorretiva();
				acaocorretiva.setNome_ac_corretiva(rs.getString("nome_ac_corretiva"));
				comboCorretiva.add(acaocorretiva);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return comboCorretiva;
	}

	public boolean existe(AcaoCorretiva acaocorretiva) throws SQLException {
		boolean achou = false;
		
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select idac_corretiva from ac_corretiva where idac_corretiva = ?");
		try {
			
			pstm.setInt(1, acaocorretiva.getIdac_corretiva());
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