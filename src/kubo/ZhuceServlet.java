package kubo;

import java.io.*;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ZhuceServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name"); 
		String pwd = request.getParameter("pwd");
	
		User user = new User(); 
		user.setName(name);
		user.setPwd(pwd);
		
		UserImp ui = new UseImpclass();
		boolean result1=ui.exist(name);
		HttpSession session = request.getSession();
		if(result1){
			 
			 session.setAttribute("regestinfoexist","用户已经存在");
			 response.sendRedirect("/Kubo/regest.jsp");
			
           
		}else{
			 ui.register(user);
			 session.setAttribute("regestinfosuccess","注册成功");
			 response.sendRedirect("/Kubo/index.jsp"); 
		} 
}}
