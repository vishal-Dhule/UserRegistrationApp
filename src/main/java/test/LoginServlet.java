package test;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,
  IOException{
	    String uN =req.getParameter("uname");
	    String pW = req.getParameter("pword");
	    UserBean ub = new LoginDAO().Login(uN, pW);
	    if(ub==null) {
	    	req.setAttribute("msg", "Invalid Login process...<br>");
	    	req.getRequestDispatcher("Msg.jsp").forward(req, res);
	    }else {
	    	Cookie ck =new Cookie("fname", ub.getfName());
	    	
	    	ServletContext sct = req.getServletContext();
	    	sct.setAttribute("ubean", ub);
	    	res.addCookie(ck);
	    	req.getRequestDispatcher("LogSuccess.jsp").forward(req, res);
	    }
  }
}
