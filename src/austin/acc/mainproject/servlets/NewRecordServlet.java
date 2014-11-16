package austin.acc.mainproject.servlets;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import austin.acc.mainproject.domain.Record;
import austin.acc.mainproject.managers.RecordManager;


/**
 * Servlet implementation class newMovieServlet
 */
@WebServlet("/NewRecordServlet")
public class NewRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc/QuoteDB")
	DataSource ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewRecordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/newrecord.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("addNewRecord")){
			String owner = (String) request.getSession().getAttribute("username");
			String artist = request.getParameter("artist");
			String album = request.getParameter("album");
			String year = request.getParameter("year");
			String genre = request.getParameter("genre");
			String notes = request.getParameter("notes");
			String art = request.getParameter("art");
			System.out.println("owner is" + owner);
			Record myNewRecord = new Record(owner,artist, album, year, genre, notes, art);
			RecordManager rm = new RecordManager(ds);
			if (rm.saveRecord(myNewRecord)){
				response.sendRedirect("/UsersRecordList");
				return;
			}else{
				request.getRequestDispatcher("/WEB-INF/newrecord.jsp").forward(request, response);
			}
		}
	}


	
}