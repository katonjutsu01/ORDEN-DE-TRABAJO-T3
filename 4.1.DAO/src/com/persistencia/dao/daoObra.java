package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Obra;
import com.dominio.entidades.Presupuesto;

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
		
		public Boolean EliminarObra(int _idObra) throws Exception{
			Connection cn = Conexion.conectar();
			Boolean elimino = false;
			try {
				CallableStatement cst = cn.prepareCall("{call spEliminarObra(?)}");
				cst.setInt(1, _idObra);
				int i = cst.executeUpdate();
				if(i>0) {elimino=true;}
			} catch (Exception e) { throw e;}
			finally{cn.close();}
			return elimino;
		}
		
		public Boolean InsertarObra(Obra o) throws Exception{
			Connection cn = Conexion.conectar();
			Boolean inserto = false;
			try {
				CallableStatement cst = cn.prepareCall("{call spInsertarObra(?,?,?)}");
				cst.setString(1, o.getNombre());
				cst.setString(2, o.getDescripcion());
				cst.setInt(3, o.getPresupuesto().getIdpresupuesto());
				int i = cst.executeUpdate();
				if(i>0) {inserto=true;}
			} catch (Exception e) { throw e;}
			finally{cn.close();}
			return inserto;
		}
		
		public Boolean EditarObra(Obra o) throws Exception{
			Connection cn = Conexion.conectar();
			Boolean edito = false;
			try {
				CallableStatement cst = cn.prepareCall("{call spEditarObra(?,?,?,?,?)}");
				cst.setInt(1, o.getIdobra());
				cst.setString(2, o.getNombre());
				cst.setString(3, o.getDescripcion());
				cst.setInt(4, o.getPresupuesto().getIdpresupuesto());
				cst.setBoolean(5, o.getActivo());
				int i = cst.executeUpdate();
				if(i>0) {edito=true;}
			} catch (Exception e) { throw e;}
			finally{cn.close();}
			return edito;
		}
		
		public Obra DevolverObra(int _idObra) throws Exception{
			Connection cn = Conexion.conectar();
			Obra o = new  Obra();
			try {
				CallableStatement cst = cn.prepareCall("{call spDevolverObra(?)}");
				cst.setInt(1, _idObra);
				ResultSet rs = cst.executeQuery();
				while(rs.next()){
					o.setIdobra(rs.getInt("idobra"));
					o.setDescripcion(rs.getString("descripcion"));
					o.setNombre(rs.getString("nombre"));
					Presupuesto p = new Presupuesto();
					p.setIdpresupuesto(rs.getInt("idpresupuesto"));
					p.setMonto(rs.getDouble("DPresupuesto"));
					o.setPresupuesto(p);
				}
			} catch (Exception e) { throw e;}
			finally{cn.close();}
			return o;
		}
}
