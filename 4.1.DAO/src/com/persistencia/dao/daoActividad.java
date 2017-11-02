package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Actividad;;

public class daoActividad {
	//SINGLETON
	public static daoActividad _Instancia;
	private daoActividad() {};
	public static daoActividad Instancia() {
		if(_Instancia==null) {
			_Instancia = new daoActividad();
		}
		return _Instancia;
	}
	//END SINGLETON
	public ArrayList<Actividad> ListarActividad() throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<Actividad> lista = new ArrayList<Actividad>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListaActividad()}");
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				Actividad a = new Actividad();
				a.setIdActividad(rs.getInt("idActividad"));
				a.setDescripcion(rs.getString("descripcion"));
				a.setTiempoestimado(rs.getInt("tiempoestimado"));
				lista.add(a);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
}
