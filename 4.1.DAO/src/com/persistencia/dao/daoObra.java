package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Obra;
import com.dominio.entidades.Presupuesto;;

public class daoObra {
	//SINGLETON
		public static daoObra _Instancia;
		private daoObra() {};
		public static daoObra Instancia() {
			if(_Instancia==null) {
				_Instancia = new daoObra();
			}
			return _Instancia;
		}
		//END SINGLETON
		public ArrayList<Obra> ListarObra() throws Exception{
			Connection cn = Conexion.conectar();
			ArrayList<Obra> lista = new ArrayList<Obra>();
			try {
				CallableStatement cst = cn.prepareCall("{call spListaObra()}");
				ResultSet rs = cst.executeQuery();
				while(rs.next()){
					Obra o = new Obra();
					o.setIdobra(rs.getInt("idobra"));
					o.setDescripcion(rs.getString("descripcion"));
					o.setNombre(rs.getString("nombre"));
					Presupuesto p = new Presupuesto();
					p.setIdpresupuesto(rs.getInt("idpresupuesto"));
					p.setMonto(rs.getDouble("DPresupuesto"));
					o.setPresupuesto(p);
					lista.add(o);
				}
			} catch (Exception e) { throw e;}
			finally{cn.close();}
			return lista;
		}
}
