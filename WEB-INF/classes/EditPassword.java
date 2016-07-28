import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.PreparedStatement;
import java.io.*;
import java.net.*;
import java.util.*;

public class EditPassword extends HttpServlet {

  private final DatabaseConnection openConnection = new DatabaseConnection();

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    Connection connect = null;
		PreparedStatement statement = null;
    HttpSession session = request.getSession();
    User user = (User)session.getAttribute("user");
    try {
      connect = openConnection.getDatabaseConnection();
      if (request.getParameter("old_password")!=null) {

        if (EncryptionPassword.encrypt(request.getParameter("old_password")).equals((String)user.getPassword()) && request.getParameter("new_password").equals(request.getParameter("password_again"))) {

          statement = connect.prepareStatement("update user set user_password = ? where user_id=?");
  				statement.setString(1,EncryptionPassword.encrypt(request.getParameter("new_password")));
          statement.setInt(2,(int)user.getUserId());

          int check = statement.executeUpdate();

          if (check==1) {
            user.setPassword(EncryptionPassword.encrypt(request.getParameter("new_password")));
            session.setAttribute("user",user);

            RequestDispatcher rd = request.getRequestDispatcher("logout");
    				rd.forward(request, response);

          } else {
            System.out.println("1");
          }

        } else {
          System.out.println("2");
        }


      } else {
        System.out.println("3");
      }
    } catch (SQLException e) {
		  e.printStackTrace();
		} catch (Exception e) {
		  e.printStackTrace();
		}


  }
}
