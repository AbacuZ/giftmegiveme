import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.PreparedStatement;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public class EditPicture extends HttpServlet {

  private final DatabaseConnection openConnection = new DatabaseConnection();
  private static final String SAVE_DIR="apache-tomcat-8.0.35\\webapps\\giftmegiveme\\picture";

  private String extractFileName(Part part) {
    String contentDisp = part.getHeader("content-disposition");
    String[] items = contentDisp.split(";");
    for (String s : items) {
      if (s.trim().startsWith("filename")) {
        return s.substring(s.indexOf("=") + 2, s.length()-1);
      }
    }
    return "";
  }

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    Connection connect = null;
		PreparedStatement statement = null;
    HttpSession session = request.getSession();
    Member member = (Member)session.getAttribute("member");

    String savePath = "C:" + File.separator + SAVE_DIR;
    File fileSaveDir = new File(savePath);

    String getFileName = "";
		String fileName = "";
		String filePath = "";

    if(!fileSaveDir.exists()){
			fileSaveDir.mkdir();
		}

		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
		String dateNow = dateFormat.format(date);

		Part part = request.getPart("photo");
		getFileName = extractFileName(part);

		if (getFileName.isEmpty()) {
			filePath =  "";
		} else {
			fileName = dateNow + "_" + getFileName;
			part.write(savePath + File.separator + fileName);
				filePath = fileName;
		}

    try {

			  connect = openConnection.getDatabaseConnection();
        statement = connect.prepareStatement("update member set member_picture = ? where member_id=?");
				statement.setString(1,filePath);
        statement.setString(2,(String)member.getIdCard());

        int check = statement.executeUpdate();

        if (check==1) {
          member.setPicturePath(filePath);
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
