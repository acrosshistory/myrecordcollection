package austin.acc.mainproject.servlets;

import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import austin.acc.mainproject.managers.RecordManager;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet(description = "Main home page for our my records Application", 
urlPatterns = { "/HomeServlet", ""})

public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  
	@Resource(name="jdbc/QuoteDB")
	DataSource ds; 
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RecordManager rm = new RecordManager(ds);
		request.setAttribute("theRecords", rm.getRecords());
		System.out.print(rm.getRecords());
		getServletContext().getRequestDispatcher("/WEB-INF/recordlists.jsp").forward(request, response);
		request.setAttribute("now", new Date());
		
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
