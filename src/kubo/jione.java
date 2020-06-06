package kubo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class jione extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  doPost(request,response);}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String  idji = request.getParameter("idji"); 
		String  vedioid = request.getParameter("vedioid"); 
		int vedioidji = Integer.parseInt(idji);
		int vedioidid = Integer.parseInt(vedioid);
		UserImp uji = new UseImpclass();
		List<Vedio> jione=uji.searchonejinumber(vedioidji,vedioidid);
		HttpSession session = request.getSession();
		 /*HttpSession session = request.getSession();*/
			if(jione!=null){
				
				
				session.setAttribute("jione", jione);
			}
			
			response.sendRedirect("/Kubo/playji.jsp");
			/* request.getRequestDispatcher("/playji.jsp").forward(request, response);*/
		    
		    
		

	}

}
