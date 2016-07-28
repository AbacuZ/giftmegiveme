import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.lang.*;
public class Alert extends HttpServlet {

	private final  DatabaseConnection myConnect = new DatabaseConnection();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws IOException, ServletException {

	Connection conn = null;
	PreparedStatement prepstmt = null;
	HttpSession session = request.getSession(false);
	Member member = (Member)session.getAttribute("member");

	try {
		conn = myConnect.getDatabaseConnection();
		if (request.getParameter("country_add") != null) {
			prepstmt = conn.prepareStatement(
				"INSERT INTO want_buy(member_id,want_buy_country) VALUES (?,?)");
			prepstmt.setString(1, member.getIdCard());
			prepstmt.setString(2, request.getParameter("country"));
			prepstmt.executeUpdate();
		} else if (request.getParameter("country_delete") != null) {
			prepstmt = conn.prepareStatement(
				"delete from want_buy where member_id =? and want_buy_country =?");
			prepstmt.setString(1, member.getIdCard());
			prepstmt.setString(2, request.getParameter("country_delete"));
			prepstmt.executeUpdate();
		}
			prepstmt.close();
			conn.close();
			RequestDispatcher rd = request.getRequestDispatcher("searchalert");
			rd.forward(request, response);
		} catch (SQLException e) {
		  e.printStackTrace();
		} catch (Exception e) {
		  e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
			doGet(request, response);
	}
}
