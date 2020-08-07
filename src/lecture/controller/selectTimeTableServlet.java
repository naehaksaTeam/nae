package lecture.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lecture.model.service.LectureService;
import lecture.model.vo.TimeTable;

/**
 * Servlet implementation class selectTimeTableServlet
 */
@WebServlet("/showTimeTable")
public class selectTimeTableServlet extends HttpServlet {
	private static final long serialVersionUID = 3547758L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectTimeTableServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String studentid = request.getParameter("who");
		LectureService ls = new LectureService();
		TimeTable list9 = new LectureService().selecTimeTable(studentid,"9");
		TimeTable list10 = new LectureService().selecTimeTable(studentid,"10");
		TimeTable list11 = new LectureService().selecTimeTable(studentid,"11");
		TimeTable list12 = new LectureService().selecTimeTable(studentid,"12");
		TimeTable list13 = new LectureService().selecTimeTable(studentid,"13");
		TimeTable list14 = new LectureService().selecTimeTable(studentid,"14");
		TimeTable list15 = new LectureService().selecTimeTable(studentid,"15");
		System.out.println("sss");
		RequestDispatcher view = null;
		view = request.getRequestDispatcher("/views/lecture/시간표조회.jsp");
		if(list9 != null)request.setAttribute("list9", list9);
		if(list10 != null)request.setAttribute("list10", list10);
		if(list11 != null)request.setAttribute("list11", list11);
		if(list12 != null)request.setAttribute("list12", list12);
		if(list13 != null)request.setAttribute("list13", list13);
		if(list14 != null)request.setAttribute("list14", list14);
		if(list15 != null)request.setAttribute("list15", list15);
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
