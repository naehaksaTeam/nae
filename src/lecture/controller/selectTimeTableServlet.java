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
		
		ArrayList<TimeTable> list = new LectureService().selecTimeTable(studentid);
		
	
		
		RequestDispatcher view = null;
		view = request.getRequestDispatcher("/views/lecture/강의계획서.jsp");
		request.setAttribute("list", list);
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
