package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Presupuesto;

public class daoPresupuesto {
	//SINGLETON
	public static daoPresupuesto _Instancia;
	private daoPresupuesto() {};
	public static daoPresupuesto Instancia() {
		if(_Instancia==null) {
			_Instancia = new daoPresupuesto();
		}
		return _Instancia;
	}
	//END SINGLETON
	public ArrayList<Presupuesto> ListarPresupuesto() throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<Presupuesto> lista = new ArrayList<Presupuesto>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListaPresupuesto()}");
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				Presupuesto p = new Presupuesto();
				p.setIdpresupuesto(rs.getInt("idpresupuesto"));
				p.setMonto(rs.getDouble("monto"));
				p.setSector(rs.getString("sector"));
				p.setTiempo_estimado(rs.getInt("tiempo_estimado"));
				lista.add(p);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
}
