package model;

public class Tratamento {
	
	private int idtratemento;	
	private String nome_tratamento;
	private String tp_tratamento;
	
	public int getIdtratemento() {
		return idtratemento;
	}
	public void setIdtratemento(int idtratemento) {
		this.idtratemento = idtratemento;
	}
	public String getNome_tratamento() {
		return nome_tratamento;
	}
	public void setNome_tratamento(String nome_tratamento) {
		this.nome_tratamento = nome_tratamento;
	}
	public String getTp_tratamento() {
		return tp_tratamento;
	}
	public void setTp_tratamento(String tp_tratamento) {
		this.tp_tratamento = tp_tratamento;
	}
	
	@Override
	public String toString() {
		return "Tratamento [idtratemento=" + idtratemento + ", nome_tratamento=" + nome_tratamento + ", tp_tratamento="
				+ tp_tratamento + "]";
	}	
}
