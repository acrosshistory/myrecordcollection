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

import austin.acc.mainproject.managers.RecordManager;

/**
 * Servlet implementation class UsersRecordList
 */
@WebServlet("/UsersRecordList")
public class UsersRecordList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/QuoteDB")
	DataSource ds;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersRecordList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession mySession = request.getSession();
		String username = (String) mySession.getAttribute("username");
			System.out.println(username);
		if ( mySession.getAttribute("isLoggedIn") == null ) {
			System.out.println("You need to be logged in to access the Member area.");
		} else {			
			
		RecordManager rm = new RecordManager(ds);
		request.setAttribute("theRecords", rm.getRecordsByUser(username));

		getServletContext().getRequestDispatcher("/WEB-INF/usersrecordlist.jsp").forward(request, response);
		return;
		}
	}

	

}

