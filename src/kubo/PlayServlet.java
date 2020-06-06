package kubo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PlayServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String  id = request.getParameter("id"); 
		int vedioid = Integer.parseInt(id);
		UserImp ui = new UseImpclass();
		List<Vedio> vedioplaylist=ui.searchone(vedioid);
		 HttpSession session = request.getSession();
		List<Comment> comment=ui.searchcommentlist(vedioid);       
		List<Vedio> ji=ui.searchoneji(vedioid);
		session.setAttribute("ji", ji);	
        session.setAttribute("commentlist", comment);
		session.setAttribute("vedioplaylist", vedioplaylist);
		response.sendRedirect("/Kubo/playvedio.jsp");
	}
}
