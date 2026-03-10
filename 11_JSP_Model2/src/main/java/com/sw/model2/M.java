package com.sw.model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Model
 * - 비즈니스 로직
 * - 계산, 일, db
 */

public class M {

	public static void calc(HttpServletRequest request, HttpServletResponse response) {
		int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));

		int c = a + b;
		request.setAttribute("c", c);
	}
}
