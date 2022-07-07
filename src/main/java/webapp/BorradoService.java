package webapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class BorradoService {
	
	public void borrarUsuario(UsuarioBean usuario) throws ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");

		try {

			Connection miConexion = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/proyecto_pfg?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"root", "");

			PreparedStatement consulta_preparada = miConexion
					.prepareStatement("DELETE FROM `usuarios` WHERE `Correo` = ?");

			consulta_preparada.setString(1, usuario.getCorreo());

			consulta_preparada.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
