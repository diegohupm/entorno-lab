package webapp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/borrado")
public class BorradoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private BorradoService borradoService = new BorradoService();
	UsuarioBean usuario;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		usuario = new UsuarioBean(request.getParameter("correo"));
		
		try {
			borradoService.borrarUsuario(usuario);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath()+"/control");
	}

}
