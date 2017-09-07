package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TratamentoDAO extends ConectaBanco {
	
public List<Tratamento> populaComboTratamento() throws SQLException {
		
		List<Tratamento> comboTratamento = new ArrayList<Tratamento>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select nome_tratamento from tratamento order by nome_tratamento asc");
		try {
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Tratamento tratamento  = new Tratamento();
				tratamento.setNome_tratamento(rs.getString("nome_tratamento"));
				comboTratamento.add(tratamento);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return comboTratamento;
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