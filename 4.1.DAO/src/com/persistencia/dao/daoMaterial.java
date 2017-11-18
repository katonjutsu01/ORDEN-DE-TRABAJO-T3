package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Material;
import com.dominio.entidades.TipoMaterial;

public class daoMaterial {
	//SINGLETON
	public static daoMaterial _Instancia;
	private daoMaterial() {};
	public static daoMaterial Instancia() {
		if(_Instancia==null) {
			_Instancia = new daoMaterial();
		}
		return _Instancia;
	}
	//END SINGLETON
	public ArrayList<Material> ListarMaterial() throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<Material> lista = new ArrayList<Material>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListaMaterial()}");
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				Material m = new Material();
				m.setIdmaterial(rs.getInt("idmaterial"));
				m.setNombre(rs.getString("nombre"));
				TipoMaterial tipmat = new TipoMaterial();
				tipmat.setIdtipomaterial(rs.getInt("idtipomaterial"));
				tipmat.setDescripcion(rs.getString("DTipoMaterial"));
				m.setTipoMaterial(tipmat);
				lista.add(m);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
	
	public Boolean EliminarMaterial(int _idmaterial) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean elimino = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEliminarMaterial(?)}");
			cst.setInt(1, _idmaterial);
			int i = cst.executeUpdate();
			if(i>0) {elimino=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return elimino;
	}
	
	public Boolean InsertarMaterial(Material m) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean inserto = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spInsertarMaterial(?,?)}");
			cst.setString(1, m.getNombre());
			cst.setInt(2, m.getTipoMaterial().getIdtipomaterial());
			int i = cst.executeUpdate();
			if(i>0) {inserto=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return inserto;
	}
	
	public Boolean EditarMaterial(Material m) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean edito = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEditarMaterial(?,?,?)}");
			cst.setInt(1, m.getIdmaterial());
			cst.setString(2, m.getNombre());
			cst.setInt(3, m.getTipoMaterial().getIdtipomaterial());
			int i = cst.executeUpdate();
			if(i>0) {edito=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return edito;
	}
	
	public Material DevolverMaterial(int _idMaterial) throws Exception{
		Connection cn = Conexion.conectar();
		Material m = new  Material();
		try {
			CallableStatement cst = cn.prepareCall("{call spDevolverMaterial(?)}");
			cst.setInt(1, _idMaterial);
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				m.setIdmaterial(rs.getInt("idmaterial"));
				m.setNombre(rs.getString("nombre"));
				TipoMaterial tipmat = new TipoMaterial();
				tipmat.setIdtipomaterial(rs.getInt("idtipomaterial"));
				tipmat.setDescripcion(rs.getString("DTipoMaterial"));
				m.setTipoMaterial(tipmat);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return m;
	}
}
