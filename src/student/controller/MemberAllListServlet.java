package student.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.model.service.MemberService;
import student.model.vo.Member;

/**
 * Servlet implementation class MemberAllListServlet
 */
@WebServlet("/alllist")
public class MemberAllListServlet extends HttpServlet {
	private static final long serialVersionUID = 8989988989L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAllListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//회원 전체 조회용 컨트롤러 
				ArrayList<Member> list = new MemberService().selectList();
				RequestDispatcher view = null;
				if(list.size()>0) { //전체조회 (사이즈크기 0보다크면 성공 )
					view = request.getRequestDispatcher("views/student/memberAllListView.jsp");
					request.setAttribute("list", list);
					view.forward(request, response);
					
				}else { //실패 
					view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message", "회원 전체 조회 실패");
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
