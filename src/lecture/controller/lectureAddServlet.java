package lecture.controller;
//수강과목추가버튼누르면.jsp
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
 * Servlet implementation class lectureAddServlet
 */
@WebServlet("/addlecture")
public class lectureAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lectureAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Lecture> list = new LectureService().selectAllPlan();
		request.setAttribute("list", list);
		
		int roommax = Integer.parseInt(request.getParameter("roommax"));
		String lecture = request.getParameter("lecture");
		
		String result = new LectureService().createRoom(lecture,roommax);
		RequestDispatcher view = null;
		if(result.equals(lecture)) {
			view = request.getRequestDispatcher("/views/lecture/수강과목추가.jsp");
			request.setAttribute("result", "ok");
			view.forward(request, response);
		}else if(result.equals("already")){
			view = request.getRequestDispatcher("/views/lecture/수강과목추가.jsp");
			request.setAttribute("result", "already");
			view.forward(request, response);
		}else{
			view = request.getRequestDispatcher("/views/lecture/수강과목추가.jsp");
			request.setAttribute("result", "no");
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
