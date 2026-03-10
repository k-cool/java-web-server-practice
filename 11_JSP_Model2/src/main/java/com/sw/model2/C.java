package com.sw.model2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Controller 
 * - 교통정리
 * - 상황 판단해서 필요한 쪽으로 보냄
 * - 웹사이트 진입점 
 */

@WebServlet("/C")
public class C extends HttpServlet {

	/*
	 * GET - 주소를 쳐서 접속하거나 클릭해서 들어감 - 어떤 사이트를 처음 들어가는 경우
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("GET");

		response.sendRedirect("v1.html");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("POST");

		M.calc(request, response);

		RequestDispatcher rd = request.getRequestDispatcher("v2.jsp");

		rd.forward(request, response);
	}

}
