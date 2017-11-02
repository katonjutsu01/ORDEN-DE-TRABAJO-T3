package Pojo;

public class Obra {
    private int idobra;
    private String descripcion;
    private Presupuesto Presupuesto;
    private String nombre;
    private Boolean activo;
	public int getIdobra() {
		return idobra;
	}
	public void setIdobra(int idobra) {
		this.idobra = idobra;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Presupuesto getPresupuesto() {
		return Presupuesto;
	}
	public void setPresupuesto(Presupuesto presupuesto) {
		Presupuesto = presupuesto;
	}
	public Boolean getActivo() {
		return activo;
	}
	public void setActivo(Boolean activo) {
		this.activo = activo;
	}
}
