package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FuncaoDAO extends ConectaBanco {
	
public List<Funcao> populaComboFuncao() throws SQLException {
		
		List<Funcao> combofuncao = new ArrayList<Funcao>();
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select nome_funcao from funcao order by nome_funcao asc");
		try {
			
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Funcao funcao = new Funcao();
				funcao.setNome_funcao(rs.getString("nome_funcao"));
				combofuncao.add(funcao);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			pstm.close();
			conexao.close();			
	}
		return combofuncao;
	}

	public boolean existe(Funcao funcao) throws SQLException {
		boolean achou = false;
		
		Connection conexao = getConexao();
		PreparedStatement pstm = conexao.prepareStatement("Select iffuncao from funcao where idfuncao = ?");
		try {
			
			pstm.setInt(1, funcao.getIdfuncao());
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