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
 * Servlet implementation class DeleteRecordServlet
 */
@WebServlet("/DeleteRecordServlet")
public class DeleteRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name="jdbc/QuoteDB")
	DataSource ds; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRecordServlet() {
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
		Record recordDelete = rm.getRecordById(idString);

		request.setAttribute("record", recordDelete);

		request.getRequestDispatcher("/WEB-INF/deleterecord.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		RecordManager rm = new RecordManager(ds);
		
		rm.deleteRecord(id);
		//passing the param
		System.out.println(id);
		response.sendRedirect("/");
		
		
	

	
				
	}

		}
	
		
			
	




