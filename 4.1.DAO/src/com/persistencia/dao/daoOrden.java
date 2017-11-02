package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;

import com.dominio.entidades.Ordendetrabajo;

public class daoOrden {
	//SINGLETON
	public static daoOrden _Instancia;
	private daoOrden() {};
	public static daoOrden Instancia() {
		if(_Instancia==null) {
			_Instancia = new daoOrden();
		}
		return _Instancia;
	}
	//END SINGLETON
	public Boolean InsertarOrden(Ordendetrabajo o) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spInsertarOrden(?,?,?,?,?,?,?)}");
			cst.setInt(1, o.getActividad().getIdActividad());
			cst.setInt(2, o.getObra().getIdobra());
			cst.setInt(3, o.getTrabajador().getIdTrabajador());
			cst.setString(4, o.getNombre());
			cst.setString(5, o.getEstado());
			cst.setDate(6, o.getFechaini());
			cst.setDate(7, o.getFechafin());
			int i = cst.executeUpdate();
			if(i>0) {inserto=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return inserto;
	}
}
