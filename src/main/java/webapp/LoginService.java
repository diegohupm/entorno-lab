package webapp;

import java.sql.*;

public class LoginService {

	public String isUserValid(UsuarioBean usuario) throws ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");

		try {

			Connection miConexion = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/proyecto_pfg?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"root", "");

			PreparedStatement consulta_preparada = miConexion
					.prepareStatement("SELECT * FROM USUARIOS WHERE CORREO = ? AND CONTRASENA = ?");

			consulta_preparada.setString(1, usuario.getCorreo());
			consulta_preparada.setString(2, usuario.getContrasena());

			ResultSet miResulset = consulta_preparada.executeQuery();

			if (miResulset.absolute(1)) {
				String rol = miResulset.getString("rol");
				return rol;
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "";
	}
}
