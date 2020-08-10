package student.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lecture.model.service.LectureService;
import lecture.model.vo.Major;
import student.model.service.MemberService;
import student.model.vo.Member;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/minsert")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 3556656445L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원 정보 추가 처리용 컨트롤러
				Date d1 = Date.valueOf(request.getParameter("adminhiredate"));
				Date d2 = Date.valueOf(request.getParameter("entrancedate"));
				
				String[] index = ((String)(request.getParameter("major"))).split(",");
				
				for(String s : index) {
					System.out.println(s);
				}
				String majorno = index[0];
				String categoryname = index[1];
				String who = index[2];
				
				Member member = new Member();
				
				member.setId(request.getParameter("id"));
				member.setName(request.getParameter("name"));
				member.setSsn(request.getParameter("ssn"));
				member.setAddress(request.getParameter("address"));
				member.setPhone(request.getParameter("phone"));
				member.setCategoryname(categoryname);
				member.setGender(request.getParameter("gender"));
				member.setEmail(request.getParameter("email"));
				member.setTreasure(request.getParameter("treasure"));
				member.setPassword(request.getParameter("password"));
				//member.setAbsencecount(Integer.parseInt(request.getParameter("absencecount")));
				//member.setAbsencewhether(request.getParameter("absencewhether"));
				member.setAdminhiredate(d1);
				member.setEntrancedate(d2);
				member.setMajorno(majorno);
				member.setPassword(request.getParameter("password"));

				int result = new MemberService().insertMember(member,who);
				
				

				if(result > 0) {  
					RequestDispatcher view = request.getRequestDispatcher("index.jsp");
	
					view.forward(request, response);
					}else {  
						ArrayList<Major> list = new LectureService().selectCategories();
						request.setAttribute("list", list);
						
						RequestDispatcher view = request.getRequestDispatcher("views/common/enrollPage.jsp");
						request.setAttribute("who", who);
						request.setAttribute("result", "비뜨실패...");
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
