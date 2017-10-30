package com.dominio.entidades;

public class StockAlmacen {
	private int id;
	private Material Material;
	private int cantidad;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Material getMaterial() {
		return Material;
	}
	public void setMaterial(Material material) {
		Material = material;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
}
