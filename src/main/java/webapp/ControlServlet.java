package webapp;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/control")
public class ControlServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private ControlService userControlService = new ControlService();
	private List<UsuarioBean> listaUsuarios = new LinkedList<>();

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		try {
			listaUsuarios = userControlService.listarUsuarios();
			request.setAttribute("listaUsuarios", listaUsuarios);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/control.jsp").forward(
				request, response);
	}
}
