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
 * Servlet implementation class EditRecordServlet
 */
@WebServlet("/EditRecordServlet")
public class EditRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name="jdbc/QuoteDB")
	DataSource ds; 
	
    public EditRecordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idString = request.getParameter("id");

		request.setAttribute("id", idString);
		RecordManager rm = new RecordManager(ds);
		Record recordToEdit = rm.getRecordById(idString);

		request.setAttribute("record", recordToEdit);

		request.getRequestDispatcher("/WEB-INF/editrecord.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");

		if ( action.equalsIgnoreCase("updateRecord") ) {
			String recordID = request.getParameter("id");
			String artist = request.getParameter("artist");
			String album = request.getParameter("album");
			String year = request.getParameter("year");
			String genre = request.getParameter("genre");
			String notes = request.getParameter("notes");
			String art = request.getParameter("art");
			
			Record myUpdatedRecord = new Record(new Integer(recordID), artist, album, year, genre, notes, art);
		
			RecordManager rm = new RecordManager(ds);
			if ( rm.updateRecord(myUpdatedRecord) ) {
				response.sendRedirect("");
				return;
			} else {
				// If save didn't work then go back to the newrecord page
				request.setAttribute("error", "Record didn't update! Let's Try again");
				request.setAttribute("theRecords", rm.getRecords());
				request.getRequestDispatcher("/WEB-INF/recordlists.jsp").forward(request, response);
			}

		}
	}

}
