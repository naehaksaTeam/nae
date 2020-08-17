package attendance.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attendance.model.service.AtndnService;
import attendance.model.vo.Atndn;



//P1-1 교수- 선택한 과목을 듣는 수강생 조회 




/**
 * Servlet implementation class MyAtndnLctrDetailServlet
 */
@WebServlet("/dlAtndn")
public class MyAtndnLctrDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyAtndnLctrDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("userid");
		String lcode = request.getParameter("lcode");
		String semester = "202001";
		Atndn atndn = new AtndnService().selectOneAtndn(sid, lcode, semester);

		RequestDispatcher view = null;
		if(atndn != null) { //성공
			view = request.getRequestDispatcher("views/attendance/myLctrDetailView.jsp");
			request.setAttribute("atndn", atndn);
			view.forward(request, response);
		}else { //실패
			view = request.getRequestDispatcher("views/common/error.jsp"); // 상대경로만 사용
			request.setAttribute("message", "상세조회 요청 실패");
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
