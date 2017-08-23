package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BairroDAO extends ConectaBanco {
	
public List<Bairro> populaComboBairro() throws SQLException {
		
		List<Bairro> combobairro = new ArrayList<Bairro>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select nome_bairro from bairro order by nome_bairro asc");
		try {
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Bairro bairro = new Bairro();
				bairro.setNome_bairro(rs.getString("nome_bairro"));
				combobairro.add(bairro);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return combobairro;
	}

	public boolean existe(Bairro bairro) throws SQLException {
		boolean achou = false;
		
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select idbairro from bairro where idbairro = ?");
		try {
			
			pstm.setInt(1, bairro.getIdbairro());
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