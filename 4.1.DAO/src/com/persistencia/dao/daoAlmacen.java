package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Almacen;
import com.dominio.entidades.Material;
import com.dominio.entidades.StockAlmacen;

public class daoAlmacen {
	//SINGLETON
	public static daoAlmacen _Instancia;
	private daoAlmacen() {};
	public static daoAlmacen Instancia() {
	if(_Instancia==null) {
		_Instancia = new daoAlmacen();
	}
		return _Instancia;
	}
	//END SINGLETON
	public ArrayList<Almacen> ListarAlmacen() throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<Almacen> lista = new ArrayList<Almacen>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListarAlmacen()}");
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				Almacen a = new Almacen();
				a.setIdalmacen(rs.getInt("idalmacen"));
				a.setDireccion(rs.getString("direccion"));
				a.setNombre(rs.getString("Nombre"));
				ArrayList<StockAlmacen> listaS = new ArrayList<StockAlmacen>();
				listaS = ListarStock(a.getIdalmacen());
				a.setStock(listaS);
				lista.add(a);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
	
	public ArrayList<StockAlmacen> ListarStock(int idalmacen) throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<StockAlmacen> lista = new ArrayList<StockAlmacen>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListarStockAlmacen(?)}");
			cst.setInt(1, idalmacen);
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				StockAlmacen s = new StockAlmacen();
                Material m = new Material();
	                m.setIdmaterial(rs.getInt("idmaterial"));
	                m.setNombre(rs.getString("NombreProducto"));
	                s.setMaterial(m);
                s.setId(rs.getInt("id"));
                s.setCantidad(rs.getInt("cantidad"));
                lista.add(s);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
}
