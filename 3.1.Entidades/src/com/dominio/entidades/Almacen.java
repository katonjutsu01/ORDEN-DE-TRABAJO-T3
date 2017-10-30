package com.dominio.entidades;

import java.util.List;

public class Almacen {
    private int idalmacen;
    private String direccion;
    private String nombre; 
    private List<StockAlmacen> stock;
	public int getIdalmacen() {
		return idalmacen;
	}
	public void setIdalmacen(int idalmacen) {
		this.idalmacen = idalmacen;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public List<StockAlmacen> getStock() {
		return stock;
	}
	public void setStock(List<StockAlmacen> stock) {
		this.stock = stock;
	}
}
