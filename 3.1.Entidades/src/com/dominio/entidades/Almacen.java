package com.dominio.entidades;

import java.util.ArrayList;

public class Almacen {
    private int idalmacen;
    private String direccion;
    private String nombre; 
    private ArrayList<StockAlmacen> stock;
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
	public ArrayList<StockAlmacen> getStock() {
		return stock;
	}
	public void setStock(ArrayList<StockAlmacen> stock) {
		this.stock = stock;
	}
}
