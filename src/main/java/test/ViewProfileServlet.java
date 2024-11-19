package test;

import jakarta.servlet.http.HttpServlet;

import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewProfileServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,
	IOException
	{
		 Cookie c[] =req.getCookies();
		 if(c==null) {
			 req.setAttribute("msg", "Sorry ! Session Expired...<br>");
			 req.getRequestDispatcher("Msg.jsp").forward(req, res);
			 
		 }else {
			 String fN=c[0].getValue();
			 req.setAttribute("fname", fN);
			 req.getRequestDispatcher("ViewProfile.jsp").forward(req, res);
		 }
		 
	}

}
