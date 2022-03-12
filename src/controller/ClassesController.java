package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/classes/*")
public class ClassesController extends MskimRequestMapping {
	
	@RequestMapping("main")
	public String memberInput(HttpServletRequest request, HttpServletResponse response) {

		return "/view/main.jsp";
	}
	
}
