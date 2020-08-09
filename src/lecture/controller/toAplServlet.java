package lecture.controller;
//수강신청페이지
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
 * Servlet implementation class toAplServlet
 */
@WebServlet("/toapl")
public class toAplServlet extends HttpServlet {
	private static final long serialVersionUID = 343533336L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public toAplServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Lecture> list = new LectureService().selectAllPlan();
		ArrayList<Lecture> list2 = new LectureService().selectOpenedLectures();
		
		RequestDispatcher view = null;
		
		view = request.getRequestDispatcher("/views/lecture/수강과목추가.jsp");
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		request.setAttribute("result", "널값제거용");
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
