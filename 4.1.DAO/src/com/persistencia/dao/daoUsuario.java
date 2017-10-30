package com.persistencia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import com.dominio.entidades.Trabajador;
import com.dominio.entidades.Usuario;

public class daoUsuario {
	//SINGLETON
	public static daoUsuario _Instancia;
	private daoUsuario() {};
	public static daoUsuario Instancia() {
		if(_Instancia==null) {
			_Instancia = new daoUsuario();
		}
		return _Instancia;
	}	
	//END SINGLETON
	
	public Usuario VerificarAcceso(String _Login, String _Passw) throws Exception{
		Connection cn = Conexion.conectar();
		Usuario u = null;
		try {
			CallableStatement cst = cn.prepareCall("{call spVerificarAcceso(?,?)}");
			cst.setString(1, _Login);
			cst.setString(2, _Passw);
			ResultSet rs = cst.executeQuery();
			if(rs.next()){
				u = new Usuario();
					Trabajador t = new Trabajador();
					t.setNombres(rs.getString("nombres"));
					t.setApellidos(rs.getString("apellidos"));
					t.setArea(rs.getString("area"));
					t.setCargo(rs.getString("cargo"));
					t.setDNI(rs.getString("DNI"));
					t.setSexo(rs.getString("Sexo"));
				u.setTrabajador(t);
				u.setIdUsuario(rs.getInt("idUsuario"));
				u.setUserName(rs.getString("UserName"));
				u.setImagen(rs.getString("imagen"));
                u.setTrabajador(t);
			}
		} catch (Exception e) { throw e;}
		finally{cn.close();}
		return u;
	}
	
}
