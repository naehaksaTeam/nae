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
import lecture.model.vo.Lecture;

/**
 * Servlet implementation class lectureApplyServlet
 */
@WebServlet("/lapply")
public class lectureApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lectureApplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Lecture> list = new LectureService().selectOpenedLectures();
		request.setAttribute("list", list);
		
		String lname = request.getParameter("lname");
		String name = request.getParameter("who");
		int r = new LectureService().applyLecture(lname,name);
		RequestDispatcher view = null;
		if(r > 0) {
			view = request.getRequestDispatcher("/views/lecture/수강신청.jsp");
			request.setAttribute("result", "ok");
			request.setAttribute("resultForSession", lname);
			view.forward(request, response);
		}else if(r == -1){
			view = request.getRequestDispatcher("/views/lecture/수강신청.jsp");
			request.setAttribute("result", "already");
			request.setAttribute("resultForSession", lname);
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("/views/lecture/수강신청.jsp");
			request.setAttribute("result", "no");
			request.setAttribute("resultForSession", lname);
			view.forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
