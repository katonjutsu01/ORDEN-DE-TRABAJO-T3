package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dominio.entidades.Actividad;
import com.dominio.entidades.Obra;
import com.dominio.entidades.Ordendetrabajo;
import com.dominio.entidades.Trabajador;

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
	
	public ArrayList<Ordendetrabajo> ListarOrden() throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<Ordendetrabajo> lista = new ArrayList<Ordendetrabajo>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListaOrdendetrabajo()}");
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				Ordendetrabajo o = new Ordendetrabajo();
				o.setIdorden(rs.getInt("idorden"));
				o.setNombre(rs.getString("nombre"));
				o.setEstado(rs.getString("estado"));		
                Obra ob = new Obra();
                	ob.setIdobra(rs.getInt("idobra"));
                	ob.setNombre(rs.getString("DObra"));
                o.setObra(ob);
                Trabajador trab = new Trabajador();
                trab.setIdTrabajador(rs.getInt("idTrabajador"));
                trab.setApellidos(rs.getString("DTrabajador"));
                o.setTrabajador(trab);
                Actividad a = new Actividad();
                a.setIdActividad(rs.getInt("idActividad"));
                a.setDescripcion(rs.getString("DActividad"));
                o.setActividad(a);
				lista.add(o);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
	public ArrayList<Ordendetrabajo> ListarOrdenPorObra(int _idObra) throws Exception{
		Connection cn = Conexion.conectar();
		ArrayList<Ordendetrabajo> lista = new ArrayList<Ordendetrabajo>();
		try {
			CallableStatement cst = cn.prepareCall("{call spListaOrdenPorObra(?)}");
			cst.setInt(1, _idObra);
			ResultSet rs = cst.executeQuery();
			while(rs.next()){
				Ordendetrabajo o = new Ordendetrabajo();
				o.setIdorden(rs.getInt("idorden"));
				o.setNombre(rs.getString("nombre"));
				o.setEstado(rs.getString("estado"));		
                Obra ob = new Obra();
                	ob.setIdobra(rs.getInt("idobra"));
                	ob.setNombre(rs.getString("DObra"));
                o.setObra(ob);
                Trabajador trab = new Trabajador();
                trab.setIdTrabajador(rs.getInt("idTrabajador"));
                trab.setApellidos(rs.getString("DTrabajador"));
                o.setTrabajador(trab);
                Actividad a = new Actividad();
                a.setIdActividad(rs.getInt("idActividad"));
                a.setDescripcion(rs.getString("DActividad"));
                o.setActividad(a);
				lista.add(o);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return lista;
	}
}
