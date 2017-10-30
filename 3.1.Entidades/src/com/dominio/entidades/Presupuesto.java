package com.dominio.entidades;

public class Presupuesto {
    private int idpresupuesto;
    private double monto;
    private String sector;
    private int tiempo_estimado;
	public int getIdpresupuesto() {
		return idpresupuesto;
	}
	public void setIdpresupuesto(int idpresupuesto) {
		this.idpresupuesto = idpresupuesto;
	}
	public double getMonto() {
		return monto;
	}
	public void setMonto(double monto) {
		this.monto = monto;
	}
	public int getTiempo_estimado() {
		return tiempo_estimado;
	}
	public void setTiempo_estimado(int tiempo_estimado) {
		this.tiempo_estimado = tiempo_estimado;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
}
