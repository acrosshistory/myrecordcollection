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
import austin.acc.mainproject.domain.Users;
import austin.acc.mainproject.managers.RecordManager;
import austin.acc.mainproject.managers.UsersManager;


@WebServlet("/DeleteUsersServlet")
public class DeleteUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(name="jdbc/QuoteDB")
	DataSource ds; 
    public DeleteUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idString = request.getParameter("id");

		request.setAttribute("id", idString);
		UsersManager um = new UsersManager(ds);
		Users userDelete = um.getUserById(idString);

		request.setAttribute("users", userDelete);

		request.getRequestDispatcher("/WEB-INF/deleteuser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		UsersManager um = new UsersManager(ds);
		
		um.deleteUser(id);
		//passing the param
		System.out.println(id);
		response.sendRedirect("UsersServlet");
		
		
	

	
				
	}
}


