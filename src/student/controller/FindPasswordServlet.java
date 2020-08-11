package student.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.model.dao.MemberDao;
import student.model.service.MemberService;
import student.model.vo.Member;

/**
 * Servlet implementation class FindPasswordServlet
 */
@WebServlet("/findpwd")
public class FindPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 비밀번호 찾기 컨트롤러

				// 1.
				request.setCharacterEncoding("utf-8");

				// 2.
				Member member = new Member();
				member.setName(request.getParameter("id"));
				member.setTreasure(request.getParameter("treasure"));

				// 3.
				int result = new MemberService().FindPasswordMember(member);

				// 4.
				if (result > 0) {

					response.sendRedirect("beet/views/student/findPassword.jsp");
				} else {
					RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message", "비밀번호.");
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