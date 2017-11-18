package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Actividad;

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
	
	public Boolean EliminarActividad(int _idActividad) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean elimino = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEliminarActividad(?)}");
			cst.setInt(1, _idActividad);
			int i = cst.executeUpdate();
			if(i>0) {elimino=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return elimino;
	}
	
	public Boolean InsertarActividad(Actividad a) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spInsertarActividad(?,?)}");
			cst.setString(1, a.getDescripcion());
			cst.setInt(2, a.getTiempoestimado());
			int i = cst.executeUpdate();
			if(i>0) {inserto=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return inserto;
	}
	
	public Boolean EditarActividad(Actividad a) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean edito = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEditarActividad(?,?,?)}");
			cst.setInt(1, a.getIdActividad());
			cst.setString(2, a.getDescripcion());
			cst.setInt(3, a.getTiempoestimado());
			int i = cst.executeUpdate();
			if(i>0) {edito=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return edito;
	}
	
	public Actividad DevolverActividad(int _idActividad) throws Exception{
		Connection cn = Conexion.conectar();
		Actividad a = new  Actividad();
		try {
			CallableStatement cst = cn.prepareCall("{call spDevolverActividad(?)}");
			cst.setInt(1, _idActividad);
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				a.setIdActividad(rs.getInt("idActividad"));
				a.setDescripcion(rs.getString("descripcion"));
				a.setTiempoestimado(rs.getInt("tiempoestimado"));
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return a;
	}
}
