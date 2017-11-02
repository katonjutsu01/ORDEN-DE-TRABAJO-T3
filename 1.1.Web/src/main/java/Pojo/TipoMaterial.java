package Pojo;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
@JsonIgnoreProperties(ignoreUnknown=true)
public class TipoMaterial {
    private int idtipomaterial;
    private String descripcion;
    private Boolean activo;
	public int getIdtipomaterial() {
		return idtipomaterial;
	}
	public void setIdtipomaterial(int idtipomaterial) {
		this.idtipomaterial = idtipomaterial;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Boolean getActivo() {
		return activo;
	}
	public void setActivo(Boolean activo) {
		this.activo = activo;
	}
}
