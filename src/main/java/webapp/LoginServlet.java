package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private LoginService userValidationService = new LoginService();
	UsuarioBean usuario;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/acceso.jsp").forward(
				request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		usuario = new UsuarioBean(request.getParameter("correo"),
	    		request.getParameter("contrasena"));

		String userRol = "";
		try {
			userRol = userValidationService.isUserValid(usuario);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		if (!userRol.equals("")) {
			request.getSession().setAttribute("correo", usuario.getCorreo());
			request.getSession().setAttribute("rol", userRol);
			response.sendRedirect(request.getContextPath()+"/home");
		} else {
			request.setAttribute("errorMessage", "Invalid Credentials!");
			request.getRequestDispatcher("/acceso.jsp").forward(
					request, response);
		}
	}

}
