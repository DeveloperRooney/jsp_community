package com.sh.community;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserHomeMain")
public class UserHomeMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserHomeMain() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
		
		int number = 7;
		
		request.setAttribute("number", number);
		request.setAttribute("name", "김수한");
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('성공');");
		out.println("</script>");
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
