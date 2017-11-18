package Pojo;

public class Material {
    private int idmaterial;
    private String nombre;
    private TipoMaterial TipoMaterial;
	public int getIdmaterial() {
		return idmaterial;
	}
	public void setIdmaterial(int idmaterial) {
		this.idmaterial = idmaterial;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public TipoMaterial getTipoMaterial() {
		return TipoMaterial;
	}
	public void setTipoMaterial(TipoMaterial tipoMaterial) {
		TipoMaterial = tipoMaterial;
	}
}
