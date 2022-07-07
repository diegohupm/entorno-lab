package webapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegistroService {

	public boolean signIn(UsuarioBean usuario)
			throws ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");

		try {

			Connection miConexion = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/proyecto_pfg?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"root", "");

			Statement miStatement = miConexion.createStatement();

			String instruccionSql = "INSERT INTO USUARIOS (Nombre, Apellido, Correo, Contrasena, Rol) VALUES ('"
					+ usuario.getNombre() + "','" + usuario.getApellido() + "','" 
					+ usuario.getCorreo() + "','" + usuario.getContrasena() 
					+ "','" + usuario.getRol() + "')";

			if (comprobarUsuarioRegistrado(usuario.getCorreo(), miConexion)) {
				miStatement.executeUpdate(instruccionSql);

				return true;
			}

		} catch (Exception e) {
			return false;
		}
		return false;
	}

	public boolean comprobarUsuarioRegistrado(String correo, Connection miConexion) {

		try {

			PreparedStatement consulta_preparada = miConexion
					.prepareStatement("SELECT * FROM USUARIOS WHERE CORREO = ?");

			consulta_preparada.setString(1, correo);

			ResultSet miResulset = consulta_preparada.executeQuery();

			if (miResulset.absolute(1)) {
				return false;
			}

		} catch (Exception e) {
			return true;
		}
		return true;

	}

}
