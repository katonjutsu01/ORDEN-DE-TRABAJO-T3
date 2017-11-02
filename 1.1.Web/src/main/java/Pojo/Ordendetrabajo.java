package Pojo;

import java.sql.Date;

public class Ordendetrabajo {
    private int idorden;
    private Actividad Actividad;
    private Trabajador Trabajador;
    private String estado;
    private Obra Obra;
    private Date fechaini;
    private Date fechafin;
    private String nombre;
	public int getIdorden() {
		return idorden;
	}
	public void setIdorden(int idorden) {
		this.idorden = idorden;
	}
	public Actividad getActividad() {
		return Actividad;
	}
	public void setActividad(Actividad actividad) {
		Actividad = actividad;
	}
	public Obra getObra() {
		return Obra;
	}
	public void setObra(Obra obra) {
		Obra = obra;
	}
	public Trabajador getTrabajador() {
		return Trabajador;
	}
	public void setTrabajador(Trabajador trabajador) {
		Trabajador = trabajador;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public Date getFechafin() {
		return fechafin;
	}
	public void setFechafin(Date fechafin) {
		this.fechafin = fechafin;
	}
	public Date getFechaini() {
		return fechaini;
	}
	public void setFechaini(Date fechaini) {
		this.fechaini = fechaini;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}
