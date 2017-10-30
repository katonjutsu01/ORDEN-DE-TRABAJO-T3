package com.dominio.entidades;

public class Detalle {
	private int iddetalle;
	private int cantidad;
	private Material Material;
	private Almacen Almacen;
	private int idstock;
	public int getIddetalle() {
		return iddetalle;
	}
	public void setIddetalle(int iddetalle) {
		this.iddetalle = iddetalle;
	}
	public Material getMaterial() {
		return Material;
	}
	public void setMaterial(Material material) {
		Material = material;
	}
	public Almacen getAlmacen() {
		return Almacen;
	}
	public void setAlmacen(Almacen almacen) {
		Almacen = almacen;
	}
	public int getIdstock() {
		return idstock;
	}
	public void setIdstock(int idstock) {
		this.idstock = idstock;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}	
}
