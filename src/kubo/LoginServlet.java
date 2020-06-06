package kubo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		
		String name = request.getParameter("name"); 
		String pwd = request.getParameter("pwd");
		User user = new User(); 
		user.setName(name);
		user.setPwd(pwd);
		UserImp ui = new UseImpclass();
		boolean result=ui.login(name,pwd);
		 HttpSession session = request.getSession();
		
		if(result){
			     
				 session.setAttribute("logininfoyes",name);
				 response.sendRedirect("/Kubo/index.jsp"); 
			
  			
		}else{
			 session.setAttribute("logininfono","用户名或者密码错误");
			 response.sendRedirect("/Kubo/login.jsp");
		}
	}


	


	

}
