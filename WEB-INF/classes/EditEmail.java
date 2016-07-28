import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.PreparedStatement;
import java.io.*;
import java.net.*;
import java.util.*;

public class EditEmail extends HttpServlet {

  private final DatabaseConnection openConnection = new DatabaseConnection();

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    Connection connect = null;
		PreparedStatement statement = null;
    HttpSession session = request.getSession();
    Member member = (Member)session.getAttribute("member");
    User user = (User)session.getAttribute("user");

    try {
			connect = openConnection.getDatabaseConnection();
      if (request.getParameter("new_email")!=null) {



        if (EncryptionPassword.encrypt(request.getParameter("password")).equals((String)user.getPassword())) {

          statement = connect.prepareStatement("update member set member_email = ? where user_id = ?");
          statement.setString(1,request.getParameter("new_email"));
          statement.setInt(2,(int)user.getUserId());
          int checkChangeEmail = statement.executeUpdate();

          statement = connect.prepareStatement("update user set user_activate = ? where user_id = ?");
          statement.setString(1,"0");
          statement.setInt(2,(int)user.getUserId());
          int checkChangeActivate = statement.executeUpdate();

          if (checkChangeEmail==1&&checkChangeActivate==1) {
            String userId = (int)user.getUserId()+"";
            String base64encodedString = Base64.getEncoder().encodeToString(userId.getBytes("utf-8"));

            int checkSendEmailSuccessful = EmailSending.sendEmail(request.getParameter("new_email"),"Activate your account","http://"+InetAddress.getLocalHost().getHostAddress()+":8080/giftmegiveme/activate?id="+base64encodedString);

            if (checkSendEmailSuccessful == 1) {
              RequestDispatcher rd = request.getRequestDispatcher("activate.jsp");
              rd.forward(request, response);
            } else {
              System.out.println("not successful");
            }

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
