package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.TipoMaterial;

public class daoTipoMaterial {
	//SINGLETON
	public static daoTipoMaterial _Instancia;
	private daoTipoMaterial() {};
	public static daoTipoMaterial Instancia() {
		if(_Instancia==null) {
			_Instancia = new daoTipoMaterial();
		}
		return _Instancia;
	}
	//END SINGLETON
	public ArrayList<TipoMaterial> ListarTipoMaterial() throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<TipoMaterial> lista = new ArrayList<TipoMaterial>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListaTipoMaterial()}");
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				TipoMaterial tipmat = new TipoMaterial();
				tipmat.setIdtipomaterial(rs.getInt("idtipomaterial"));
				tipmat.setDescripcion(rs.getString("descripcion"));
				tipmat.setActivo(rs.getBoolean("activo"));
				lista.add(tipmat);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
	
	public Boolean EliminarTipoMaterial(int _idtipomaterial) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean elimino = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEliminarTipoMaterial(?)}");
			cst.setInt(1, _idtipomaterial);
			int i = cst.executeUpdate();
			if(i>0) {elimino=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return elimino;
	}
	
	public Boolean InsertarTipoMaterial(TipoMaterial tipmat) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spInsertarTipoMaterial(?)}");
			cst.setString(1, tipmat.getDescripcion());
			int i = cst.executeUpdate();
			if(i>0) {inserto=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return inserto;
	}
	
	public Boolean EditarTipoMaterial(TipoMaterial tipmat) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean edito = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEditarTipoMaterial(?,?)}");
			cst.setInt(1, tipmat.getIdtipomaterial());
			cst.setString(2, tipmat.getDescripcion());
			int i = cst.executeUpdate();
			if(i>0) {edito=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return edito;
	}
	
	public TipoMaterial DevolverTipoMaterial(int _idtipomaterial) throws Exception{
		Connection cn = Conexion.conectar();
		TipoMaterial tipmat = new TipoMaterial();
		try {
			CallableStatement cst = cn.prepareCall("{call spDevolverTipoMaterial(?)}");
			cst.setInt(1, _idtipomaterial);
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				tipmat.setDescripcion(rs.getString("descripcion"));
				tipmat.setIdtipomaterial(rs.getInt("idtipomaterial"));
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return tipmat;
	}
	

}
