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
import lecture.model.vo.ApplyReception;
import lecture.model.vo.Lecture;

/**
 * Servlet implementation class deleteApplyServlet
 */
@WebServlet("/dlapply")
public class deleteApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 33242657665L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteApplyServlet() {
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
		String lcode = request.getParameter("lcode");

		ApplyReception reception = (ApplyReception)new LectureService().selectLapply(name,lname);
		
		request.setAttribute("resultForSession", lname);//신청여부 구분하기
		
		RequestDispatcher view = null;
		int r = 0;
		System.out.println("delete : " + reception);
		if(reception.getReceptionno() == null) {
			view = request.getRequestDispatcher("/views/lecture/applylecture.jsp");
			request.setAttribute("result5", "no");
			view.forward(request, response);
		}else {
			r = new LectureService().deleteApply(lcode,name,lname);
			
			if(r > 0) {
				view = request.getRequestDispatcher("/views/lecture/applylecture.jsp");
				request.setAttribute("result5", "ok");
				view.forward(request, response);
			}else {
				view = request.getRequestDispatcher("/views/lecture/applylecture.jsp");
				request.setAttribute("result5", "no");
				view.forward(request, response);
			}
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
