package austin.acc.mainproject.servlets;

import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import austin.acc.mainproject.managers.RecordManager;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet(description = "Main home page for our my records Application", urlPatterns = {
		"/HomeServlet", "" })

public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/QuoteDB")
	DataSource ds;

	public HomeServlet() {
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
		System.out
				.println("isLoggedIn=" + mySession.getAttribute("isLoggedIn"));
		System.out.println("username" + mySession.getAttribute("username"));
		if (mySession.getAttribute("isLoggedIn") == null) {

			response.sendRedirect("/LogInServlet");
		} else {
			RecordManager rm = new RecordManager(ds);
			request.setAttribute("theRecords", rm.getRecords());
			System.out.print(rm.getRecords());
			getServletContext().getRequestDispatcher("/UsersRecordList")
					.forward(request, response);
			request.setAttribute("now", new Date());

		}
	}

}
