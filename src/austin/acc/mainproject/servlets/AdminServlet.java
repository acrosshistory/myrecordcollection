package austin.acc.mainproject.servlets;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import austin.acc.mainproject.domain.Users;
import austin.acc.mainproject.managers.RecordManager;
import austin.acc.mainproject.managers.UsersManager;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/QuoteDB")
	DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		HttpSession mySession = request.getSession();

		if (!mySession.getAttribute("username").equals("admin")
				& !mySession.getAttribute("password").equals("admin")) {
			getServletContext().getRequestDispatcher("/WEB-INF/403error.jsp")
					.forward(request, response);
		} else {

			UsersManager um = new UsersManager(ds);
			request.setAttribute("theUsers", um.getUsers());

			RecordManager rm = new RecordManager(ds);
			request.setAttribute("theRecords", rm.getRecords());

			getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp")
					.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("addNewUser")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			Users myNewUser = new Users(username, password);
			UsersManager um = new UsersManager(ds);

			boolean succeeded = um.addUser(myNewUser);
			if (succeeded == true) {
				response.sendRedirect("/Member");
				return;
			} else {
				request.setAttribute("errorMessage",
						"Could not add user. Try again!");
				// If save didn't work then go back to the newUser page
				request.getRequestDispatcher("/WEB-INF/newusers.jsp").forward(
						request, response);
			}

			// Adding user worked so display list of users
			request.getRequestDispatcher("/WEB-INF/userslist.jsp");
			return;

		}

	}

}
