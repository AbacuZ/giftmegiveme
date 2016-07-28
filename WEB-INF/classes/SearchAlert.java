import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.lang.*;
public class SearchAlert extends HttpServlet {

	private final  DatabaseConnection myConnect = new DatabaseConnection();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws IOException, ServletException {

      Connection conn = null;
      PreparedStatement prepstmt = null;
      HttpSession session = request.getSession(false);
      Member member = (Member)session.getAttribute("member");
	  	ArrayList<Travel> list = new ArrayList <Travel>();
	  	try {
       conn = myConnect.getDatabaseConnection();
       prepstmt = conn.prepareStatement("select * from want_buy where member_id=?");
 	     prepstmt.setString(1,member.getIdCard());
	  	 ResultSet rs = prepstmt.executeQuery();
	     while (rs.next()) {
         Travel travel= new Travel();
         travel.setCountry(rs.getString("want_buy_country"));
         list.add(travel);
		   }
		   session.setAttribute("want_buy",list);
		   rs.close();
		   prepstmt.close();
		   conn.close();
		   RequestDispatcher rd = request.getRequestDispatcher("alert.jsp");
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
