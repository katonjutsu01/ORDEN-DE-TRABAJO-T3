package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.dominio.entidades.Trabajador;

public class daoTrabajador {
	//SINGLETON
	public static daoTrabajador _Instancia;
	private daoTrabajador() {};
	public static daoTrabajador Instancia() {
		if(_Instancia==null) {
			_Instancia = new daoTrabajador();
			}
		return _Instancia;
		}
	//END SINGLETON
	public ArrayList<Trabajador> ListarTrabajador() throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<Trabajador> lista = new ArrayList<Trabajador>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListarTrabajador()}");
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				Trabajador t = new Trabajador();
				t.setIdTrabajador(rs.getInt("idTrabajador"));
				t.setApellidos(rs.getString("apellidos"));
				t.setEstado(rs.getBoolean("estado"));
				lista.add(t);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
	
	public Boolean EditarTrabajador(Trabajador t) throws Exception{
		Connection cn = Conexion.conectar();
		Boolean edito = false;
		try {
			CallableStatement cst = cn.prepareCall("{call spEditarTrabajador(?,?)}");
			cst.setInt(1, t.getIdTrabajador());
			cst.setBoolean(2, t.getEstado());
			int i = cst.executeUpdate();
			if(i>0) {edito=true;}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return edito;
	}
}
