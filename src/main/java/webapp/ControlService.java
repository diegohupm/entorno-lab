package webapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

public class ControlService {

	public List<UsuarioBean> listarUsuarios() throws ClassNotFoundException {

		Class.forName("com.mysql.jdbc.Driver");

		List<UsuarioBean> usuarios = new LinkedList<UsuarioBean>();
		String nombre, apellido, correo, rol;

		try {

			Connection miConexion = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/proyecto_pfg?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"root", "");

			PreparedStatement consulta_preparada = miConexion
					.prepareStatement("SELECT NOMBRE, APELLIDO, CORREO, ROL FROM USUARIOS");

			ResultSet miResulset = consulta_preparada.executeQuery();

//			request.setAttribut

			while (miResulset.next()) {
				nombre = miResulset.getString("NOMBRE");
				apellido = miResulset.getString("APELLIDO");
				correo = miResulset.getString("CORREO");
				rol = miResulset.getString("ROL");

				UsuarioBean u = new UsuarioBean(nombre, apellido, correo, rol);
				usuarios.add(u);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return usuarios;
	}

}
