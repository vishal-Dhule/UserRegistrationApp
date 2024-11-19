package test;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class UpdateProfileServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,
	IOException
	{
		Cookie c[] = req.getCookies();
		if(c==null)
		{
			req.setAttribute("msg", "sorry! Session Expired...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			String fN =c[0].getValue();
			req.setAttribute("fname", fN);
			
			ServletContext sct =req.getServletContext();
			
			UserBean ub =(UserBean)sct.getAttribute("ubean");
			ub.setCity(req.getParameter("city"));
			ub.setmId(req.getParameter("mid"));
			ub.setPhNo(Long.parseLong(req.getParameter("phno")));
			
			int k = new UpdateProfileDAO().update(ub);
			if (k>0){
				req.setAttribute("msg", "Profile Update Successfully...<br>");
				req.getRequestDispatcher("UpdateProfile.jsp").forward(req, res);
				
			}
		}
	}
}
