package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/registro")
public class RegistroServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private RegistroService registerValidationService = new RegistroService();
	UsuarioBean usuario;
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/registro.jsp").forward(
				request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	    usuario = new UsuarioBean(request.getParameter("nombre"),
	    		request.getParameter("apellido"),
	    		request.getParameter("correo"),
	    		request.getParameter("contrasena"),
	    		request.getParameter("rol"));
	    		
	    Boolean registradoConExito = false;
		
	    try {
			registradoConExito = registerValidationService.signIn(usuario);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		if (registradoConExito) {
			response.sendRedirect(request.getContextPath()+"/registro-correcto.jsp");
		} else {
			response.sendRedirect(request.getContextPath()+"/registro-fallido.jsp");
		}
	}

}
