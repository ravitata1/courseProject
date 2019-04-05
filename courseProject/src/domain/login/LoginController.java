//package and import statements
package domain.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginController() {}
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//new customer object
		CustomerDao customerDao = new CustomerDaoImpl();
		
		//retrieves login credentials
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String submitType = request.getParameter("submit");
		
		//new login object
		Login login = new Login(username, password);
		
		
		//creates new customer object
		Customer c = customerDao.validateCustomer(login);

		//if user is logging in
		if(submitType.equals("login") && c!=null && c.getName()!=null){
			request.setAttribute("message", "Hello "+c.getName() + ",");
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}
		//if user is registering an account
		else if(submitType.equals("register")){
			c.setName(request.getParameter("name"));
			c.setUsername(request.getParameter("username"));
			c.setPassword(request.getParameter("password"));
			customerDao.register(c);
			request.setAttribute("successMessage", "Registration done, please login!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		//print error message
		else{
			request.setAttribute("message", "Data Not Found! Please register!");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
		
		
		
		

	}

}
