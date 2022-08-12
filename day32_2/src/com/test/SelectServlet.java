package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RadioServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] fruit=request.getParameterValues("fruit");
		
		String res="<html>";
			   res+="Selected fruit : ";
		if(fruit==null) {
			   res+="Didn't Select.";
		} else {
			for(String f:fruit) {
			   res+="<h3>"+f+"</h3>";
			}
		}
		res+="</html>";
		
	    response.getWriter().print(res);
		
	}
	    
//	    try {
//	    	fruit=null;
//	    } catch(NullPointerException e) {
//	    	System.out.println("Didn't Select.");
//	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
