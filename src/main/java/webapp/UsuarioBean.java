package webapp;

import java.io.Serializable;

public class UsuarioBean implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String nombre, apellido, correo, contrasena, rol;

	public UsuarioBean() {
		super();
	}
	
	public UsuarioBean(String nombre, String apellido, String correo, String rol) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
		this.rol = rol;
	}
	
	public UsuarioBean(String nombre, String apellido, String correo, String contrasena, String rol) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
		this.contrasena = contrasena;
		this.rol = rol;
	}
	
	public UsuarioBean( String correo, String contrasena) {
		super();
		this.correo = correo;
		this.contrasena = contrasena;
	}
	
	public UsuarioBean( String correo) {
		super();
		this.correo = correo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	
	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}
	
	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", apellido=" + apellido + ", correo=" + correo + ", rol=" + rol + "]";
	}
}
