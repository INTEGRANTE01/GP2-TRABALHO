package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CidadeDAO extends ConectaBanco {
	
public List<Cidade> populaComboCidade() throws SQLException {
		
		List<Cidade> combocidade = new ArrayList<Cidade>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select nome_cidade from cidade order by nome_cidade asc");
		try {
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Cidade cidade = new Cidade();
				cidade.setNome_cidade(rs.getString("nome_cidade"));
				combocidade.add(cidade);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return combocidade;
	}

	public boolean existe(Cidade cidade) throws SQLException {
		boolean achou = false;
		
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select idcidade from cidade where idcidade = ?");
		try {
			
			pstm.setInt(1, cidade.getIdcidade());
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