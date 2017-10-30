package Pojo;

import java.sql.Date;

public class Usuario {
    private int idUsuario;
    private Trabajador trabajador;
    private String UserName;
    private String Password;
    private Date FechaDeCaducidad;
    private Boolean Activo;
    private String imagen;
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public Trabajador getTrabajador() {
		return trabajador;
	}
	public void setTrabajador(Trabajador trabajador) {
		this.trabajador = trabajador;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public Boolean getActivo() {
		return Activo;
	}
	public void setActivo(Boolean activo) {
		Activo = activo;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public Date getFechaDeCaducidad() {
		return FechaDeCaducidad;
	}
	public void setFechaDeCaducidad(Date fechaDeCaducidad) {
		FechaDeCaducidad = fechaDeCaducidad;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
}
