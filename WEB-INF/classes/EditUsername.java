import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.PreparedStatement;
import java.io.*;
import java.net.*;
import java.util.*;

public class EditUsername extends HttpServlet {

  private final DatabaseConnection openConnection = new DatabaseConnection();

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    Connection connect = null;
		PreparedStatement statement = null;
    HttpSession session = request.getSession();
    User user = (User)session.getAttribute("user");
    try {
			connect = openConnection.getDatabaseConnection();
      if (request.getParameter("username")!=null) {

        statement = connect.prepareStatement("update user set user_username = ? where user_id=?");
				statement.setString(1,request.getParameter("username"));
        statement.setInt(2,(int)user.getUserId());

        int check = statement.executeUpdate();

        if (check==1) {
          user.setUsername(request.getParameter("username"));
          session.setAttribute("user",user);

          RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
  				rd.forward(request, response);

        }

      } else {
        System.out.println("hi");
      }
    } catch (SQLException e) {
		  e.printStackTrace();
		} catch (Exception e) {
		  e.printStackTrace();
		}


  }
}
