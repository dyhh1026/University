package kubo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IntroduceServlet extends HttpServlet {

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
		List<Vedio> vedio=ui.searchone(vedioid);
		 HttpSession session = request.getSession();
		
			session.setAttribute("vedio", vedio);
			 response.sendRedirect("/Kubo/introduce.jsp");

	}

}
