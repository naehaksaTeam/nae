package student.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.model.service.MemberService;
import student.model.vo.Member;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/mupdate")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
				//1.
				request.setCharacterEncoding("utf-8");
				
				//2.
				Member member = new Member();
				
				
				member.setId(request.getParameter("id"));
				member.setPassword(request.getParameter("password"));
				member.setName(request.getParameter("name"));
				member.setSsn(request.getParameter("ssn"));
				member.setAddress(request.getParameter("address"));
				member.setPhone(request.getParameter("phone"));
				member.setGender(request.getParameter("gender"));
				member.setCategoryname(request.getParameter("categoryname"));
				member.setEmail(request.getParameter("email"));
				member.setTreasure(request.getParameter("treasure"));
				
				//3.
				int result = new MemberService().updateMember(member);
				
				//4.
				if(result > 0) {  //수정 성공시
					//myinfo 서블릿을 실행해서, 내 정보보기 페이지를 내보냄
					response.sendRedirect("/beet/");
					}else {  //수정 실패시
					RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message", member.getId() + " 회원의 정보 수정 실패.");
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