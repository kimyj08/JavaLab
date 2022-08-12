package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SignupServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String uid=request.getParameter("id");
//		String res1="<html><h3>User ID : "+uid+"</H3>";
//		response.getWriter().print(res1);
//		String upw=request.getParameter("pw");
//		String res2="<html><h3>Password : "+upw+"</H3>";
//		response.getWriter().print(res2);
//		String uname=request.getParameter("name");
//		String res3="<html><h3>Name : "+uname+"</H3>";
//		response.getWriter().print(res3);
		
		String uid=request.getParameter("id");
		String upw=request.getParameter("pw");
		String uname=request.getParameter("name");
		
		String res="<html>";
		res+="<h3>User ID : "+uid+"</H3>";
		res+="<h3>Password : "+upw+"</H3>";
		res+="<h3>Name : "+uname+"</H3>";
		res+="</html>";
		
		response.getWriter().print(res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
