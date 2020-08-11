package lecture.controller;
//수강신청
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lecture.model.service.LectureService;
import lecture.model.vo.ApplyReception;
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
		ArrayList<Lecture> list = new LectureService().selectOpenedLectures();//개설된강좌목록불러오기
		request.setAttribute("list", list);
		
		String lname = request.getParameter("lname");
		String name = request.getParameter("who");
		
//		ApplyReception ar = new ApplyReception();
//		ar.setId(name);
//		ar.setLcode(list.get);
//		ar.setLpersonnel(lpersonnel);
//		ar.setReceptionno(receptionno);
//		ar.setRetake(retake);
//		ar.setRoom(room);
//		ar.setSemester(semester);
		
		int r = new LectureService().applyLecture(lname,name);//수강신청버튼
		request.setAttribute("resultForSession", lname);//신청여부 구분하기
		
		RequestDispatcher view = null;
		if(r > 0) {
			view = request.getRequestDispatcher("/views/lecture/수강신청.jsp");
			request.setAttribute("result", "ok");
			view.forward(request, response);
		}else if(r == -1){
			view = request.getRequestDispatcher("/views/lecture/수강신청.jsp");
			request.setAttribute("result", "already");
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("/views/lecture/수강신청.jsp");
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
