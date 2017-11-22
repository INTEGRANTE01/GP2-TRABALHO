package model;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

public class Visita {
	
	private int idvisita;
	private int idnotificacao;
	private String status;
	private String agente;
	private Date data_visita;
	private String bairro;
	private String rua;
	private String quadra;
	private String lote;	
	private String numero;
	private String cidade;
	private String latitude;
	private String longitude;
	private String tp_imovel;
	private String estagio;
	private String tp_larvicida;
	private String ac_corretiva;
	private String local_foco;
	private int dp1;	
	private int dp2;
	private int dp3;	
	private int dp4;
	private int dp5;	
	private int dp6;
	private int dp7;
	private int qt1;
	private int qt2;
	private int qt3;
	private int qt4;
	private int qt5;
	private int qt6;
	private int qt7;
	private boolean verifica_foco;
	public int getIdvisita() {
		return idvisita;
	}
	public void setIdvisita(int idvisita) {
		this.idvisita = idvisita;
	}
	public int getIdnotificacao() {
		return idnotificacao;
	}
	public void setIdnotificacao(int idnotificacao) {
		this.idnotificacao = idnotificacao;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAgente() {
		return agente;
	}
	public void setAgente(String agente) {
		this.agente = agente;
	}
	public Date getData_visita() {
		return data_visita;
	}
	public void setData_visita(Date data_visita) {
		this.data_visita = data_visita;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public String getQuadra() {
		return quadra;
	}
	public void setQuadra(String quadra) {
		this.quadra = quadra;
	}
	public String getLote() {
		return lote;
	}
	public void setLote(String lote) {
		this.lote = lote;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getTp_imovel() {
		return tp_imovel;
	}
	public void setTp_imovel(String tp_imovel) {
		this.tp_imovel = tp_imovel;
	}
	public String getEstagio() {
		return estagio;
	}
	public void setEstagio(String estagio) {
		this.estagio = estagio;
	}
	public String getTp_larvicida() {
		return tp_larvicida;
	}
	public void setTp_larvicida(String tp_larvicida) {
		this.tp_larvicida = tp_larvicida;
	}
	public String getAc_corretiva() {
		return ac_corretiva;
	}
	public void setAc_corretiva(String ac_corretiva) {
		this.ac_corretiva = ac_corretiva;
	}
	public String getLocal_foco() {
		return local_foco;
	}
	public void setLocal_foco(String local_foco) {
		this.local_foco = local_foco;
	}
	public int getDp1() {
		return dp1;
	}
	public void setDp1(int dp1) {
		this.dp1 = dp1;
	}
	public int getDp2() {
		return dp2;
	}
	public void setDp2(int dp2) {
		this.dp2 = dp2;
	}
	public int getDp3() {
		return dp3;
	}
	public void setDp3(int dp3) {
		this.dp3 = dp3;
	}
	public int getDp4() {
		return dp4;
	}
	public void setDp4(int dp4) {
		this.dp4 = dp4;
	}
	public int getDp5() {
		return dp5;
	}
	public void setDp5(int dp5) {
		this.dp5 = dp5;
	}
	public int getDp6() {
		return dp6;
	}
	public void setDp6(int dp6) {
		this.dp6 = dp6;
	}
	public int getDp7() {
		return dp7;
	}
	public void setDp7(int dp7) {
		this.dp7 = dp7;
	}
	public int getQt1() {
		return qt1;
	}
	public void setQt1(int qt1) {
		this.qt1 = qt1;
	}
	public int getQt2() {
		return qt2;
	}
	public void setQt2(int qt2) {
		this.qt2 = qt2;
	}
	public int getQt3() {
		return qt3;
	}
	public void setQt3(int qt3) {
		this.qt3 = qt3;
	}
	public int getQt4() {
		return qt4;
	}
	public void setQt4(int qt4) {
		this.qt4 = qt4;
	}
	public int getQt5() {
		return qt5;
	}
	public void setQt5(int qt5) {
		this.qt5 = qt5;
	}
	public int getQt6() {
		return qt6;
	}
	public void setQt6(int qt6) {
		this.qt6 = qt6;
	}
	public int getQt7() {
		return qt7;
	}
	public void setQt7(int qt7) {
		this.qt7 = qt7;
	}
	public boolean isVerifica_foco() {
		return verifica_foco;
	}
	public void setVerifica_foco(boolean verifica_foco) {
		this.verifica_foco = verifica_foco;
	}
	@Override
	public String toString() {
		return "Visita [idvisita=" + idvisita + ", idnotificacao=" + idnotificacao + ", status=" + status + ", agente="
				+ agente + ", data_visita=" + data_visita + ", bairro=" + bairro + ", rua=" + rua + ", quadra=" + quadra
				+ ", lote=" + lote + ", numero=" + numero + ", cidade=" + cidade + ", latitude=" + latitude
				+ ", longitude=" + longitude + ", tp_imovel=" + tp_imovel + ", estagio=" + estagio + ", tp_larvicida="
				+ tp_larvicida + ", ac_corretiva=" + ac_corretiva + ", local_foco=" + local_foco + ", dp1=" + dp1
				+ ", dp2=" + dp2 + ", dp3=" + dp3 + ", dp4=" + dp4 + ", dp5=" + dp5 + ", dp6=" + dp6 + ", dp7=" + dp7
				+ ", qt1=" + qt1 + ", qt2=" + qt2 + ", qt3=" + qt3 + ", qt4=" + qt4 + ", qt5=" + qt5 + ", qt6=" + qt6
				+ ", qt7=" + qt7 + ", verifica_foco=" + verifica_foco + "]";
	}
	
	
		
}
