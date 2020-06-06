package kubo;

import java.io.*;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;




import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class CommentServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String  comment = request.getParameter("comment");    
		String time = request.getParameter("time");
		String  username = request.getParameter("username"); 
		String  vedio = request.getParameter("vedioid"); 
		int vedioid = Integer.parseInt(vedio);
		Comment cobject = new Comment(); 
		cobject.setComment(comment);
		cobject.setTime(time);
		cobject.setUsername(username);
		cobject.setVedioid(vedioid);
		
		
		UserImp ui = new UseImpclass();
		ui.insert(cobject);
		response.sendRedirect("/Kubo/playvedio.jsp"); 
	}


}
