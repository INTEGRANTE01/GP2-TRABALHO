package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EstagioDAO extends ConectaBanco {
	
public List<Estagio> populaComboEstagio() throws SQLException {
		
		List<Estagio> comboestagio = new ArrayList<Estagio>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select nome_estagio from estagio order by nome_estagio asc");
		try {
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Estagio estagio = new Estagio();
				estagio.setNome_estagio(rs.getString("nome_estagio"));
				comboestagio.add(estagio);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return comboestagio;
	}

	public boolean existe(Estagio estagio) throws SQLException {
		boolean achou = false;
		
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select idestagio from estagio where idestagio = ?");
		try {
			
			pstm.setInt(1, estagio.getIdestagio());
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