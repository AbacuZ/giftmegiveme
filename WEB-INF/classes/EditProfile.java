import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.PreparedStatement;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public class EditProfile extends HttpServlet {

  private final DatabaseConnection openConnection = new DatabaseConnection();

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");

    Connection connect = null;
		PreparedStatement statement = null;
    HttpSession session = request.getSession();
    Member member = (Member)session.getAttribute("member");
    User user = (User)session.getAttribute("user");

    try {
      connect = openConnection.getDatabaseConnection();
      statement = connect.prepareStatement(
      "UPDATE member SET member_firstname = ?,member_lastname = ?,member_gender = ?,member_address = ?,member_mobile = ?,member_idLine = ? WHERE user_id = ?");
      statement.setString(1,request.getParameter("firstname"));
      statement.setString(2,request.getParameter("lastname"));
      statement.setString(3,request.getParameter("gender"));
      statement.setString(4,request.getParameter("address"));
      statement.setString(5,request.getParameter("telephone"));
      statement.setString(6,request.getParameter("lineID"));
      statement.setInt(7,(int)user.getUserId());
      int check = statement.executeUpdate();


        if (check==1) {
          member.setFirstName(request.getParameter("firstname"));
    			member.setLastName(request.getParameter("lastname"));
    			member.setGender(request.getParameter("gender"));
    			member.setPhoneNumber(request.getParameter("telephone"));
    			member.setAddress(request.getParameter("address"));
    			member.setLineId(request.getParameter("lineID"));

    			session.setAttribute("member",member);

          RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
  				rd.forward(request, response);

        }

          } catch (SQLException e) {
		  e.printStackTrace();
		} catch (Exception e) {
		  e.printStackTrace();
		}


  }
}
