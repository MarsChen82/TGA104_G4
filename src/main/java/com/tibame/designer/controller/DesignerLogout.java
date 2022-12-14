package com.tibame.designer.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DesignerLogout")
public class DesignerLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String Logout = req.getParameter("logout");
		if("desginerlogout".equals(Logout)) {			
			HttpSession session = req.getSession();
				session.removeAttribute("designerlogin");
				session.invalidate();
				//return "redirect:Ui//front-end/designer/index.jsp";
				res.sendRedirect(req.getContextPath() + "/front-end/designer/index.jsp");	
		}
		
		
	}

}
