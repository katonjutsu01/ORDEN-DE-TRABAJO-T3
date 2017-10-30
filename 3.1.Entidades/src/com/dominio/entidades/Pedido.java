package com.dominio.entidades;

import java.sql.Date;
import java.util.List;

public class Pedido {
    private int idpedido;
    private Date fechapedido;
    private List<Detalle> Detalle;
    private Ordendetrabajo Orden;
	public int getIdpedido() {
		return idpedido;
	}
	public void setIdpedido(int idpedido) {
		this.idpedido = idpedido;
	}
	public Date getFechapedido() {
		return fechapedido;
	}
	public void setFechapedido(Date fechapedido) {
		this.fechapedido = fechapedido;
	}
	public Ordendetrabajo getOrden() {
		return Orden;
	}
	public void setOrden(Ordendetrabajo orden) {
		Orden = orden;
	}
	public List<Detalle> getDetalle() {
		return Detalle;
	}
	public void setDetalle(List<Detalle> detalle) {
		Detalle = detalle;
	}
}
