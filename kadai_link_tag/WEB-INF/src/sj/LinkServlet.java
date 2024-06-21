package sj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LinkServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) 
	throws ServletException ,IOException
	{
		
		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

		String samurai=request.getParameter("name");
		
		request.setAttribute("name", "Servletからデータを受信しました："+samurai+"さん、こんにちは！");
		
		RequestDispatcher disPatch=request.getRequestDispatcher("/index.jsp");
		
		disPatch.forward(request,response);
		
	}

}
