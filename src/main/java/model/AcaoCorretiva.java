package model;

public class AcaoCorretiva {
	
	private int idac_corretiva;	
	private String nome_ac_corretiva;
	
	public int getIdac_corretiva() {
		return idac_corretiva;
	}
	public void setIdac_corretiva(int idac_corretiva) {
		this.idac_corretiva = idac_corretiva;
	}
	public String getNome_ac_corretiva() {
		return nome_ac_corretiva;
	}
	public void setNome_ac_corretiva(String nome_ac_corretiva) {
		this.nome_ac_corretiva = nome_ac_corretiva;
	}
	
	@Override
	public String toString() {
		return "AcaoCorretiva [idac_corretiva=" + idac_corretiva + ", nome_ac_corretiva=" + nome_ac_corretiva + "]";
	}
	
	

}
