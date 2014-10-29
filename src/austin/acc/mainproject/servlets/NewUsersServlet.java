package austin.acc.mainproject.servlets;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import austin.acc.mainproject.domain.Users;
import austin.acc.mainproject.managers.UsersManager;
//nedd to do this 
/**
 * Servlet implementation class NewUsersServlet
 */
@WebServlet("/NewUsersServlet")
public class NewUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	@Resource(name="jdbc/QuoteDB")
	DataSource ds; 
    public NewUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/newusers.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

		if ( action.equalsIgnoreCase("addNewUser") ) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			Users myNewUser = new Users(username, password);
			UsersManager um = new UsersManager(ds);

			boolean succeeded = um.addUser(myNewUser);
			if ( succeeded == true ) {
				response.sendRedirect("");
				return;
			} else {
				request.setAttribute("errorMessage", "Could not add user. Try again!");
				// If save didn't work then go back to the newUser page
				request.getRequestDispatcher("/WEB-INF/newuser.jsp").forward(request, response);
			}

			// Adding user worked so display list of users
			request.getRequestDispatcher("/WEB-INF/userslist.jsp");
			return;
		}
	}
	

}
