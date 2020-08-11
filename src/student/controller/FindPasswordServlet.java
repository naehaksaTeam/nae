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

				// 1.전송온 값에 한글이 있다면 인코딩 처리함
				request.setCharacterEncoding("utf-8");

				// 2.전송온 값 꺼내서, 변수 또는 객체에 기록 저장 처리함
				String id = request.getParameter("id");
				String treasure = request.getParameter("treasure");

				// 3.서비스 객체 생성하고, 서비스 메소드를 이용해서 객체 전달하고처리 결과받기

				MemberService service = new MemberService();
				Member member = service.FindPasswordMember(id, treasure);

				// 4.받은 결과에 따라 성공/실패 뷰 선택해서 내보내기
				// if 문으로 결과처리
				if(member.getId().equals("notanswer")) {
					member = null;
				}
				if (member != null) {
					
					response.sendRedirect("views/student/afterfindPassword.jsp");
					
				} else {
					response.sendRedirect("views/common/error.jsp");
					
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
