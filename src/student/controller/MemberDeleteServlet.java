package student.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import student.model.service.MemberService;

/**
 * Servlet implementation class MemberDeleteServlet
 */
@WebServlet("/mdelete")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 6578568L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원 탈퇴 처리용 컨트롤러 : delete 구문 적용함.
		
				
				//2.
				String id = request.getParameter("id");
				
				//3.
				int result = new MemberService().deleteMember(id);
				
				
				//4.
				if(result > 0) {  //성공시
					//탈퇴 성공시 로그아웃 처리함
					HttpSession session = request.getSession(false);
					if(session != null) {  //로그인한 상태라면 (세션객체가 있다면)
						//세션 객체를 없앰
						session.invalidate();
						response.sendRedirect("index.jsp");
					
					}
				}else {  //실패시
					RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message", id + " 회원님의 탈퇴 요청 실패.");
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
