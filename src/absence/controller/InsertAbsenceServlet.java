package absence.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import absence.model.service.AbsenceService;
import student.model.service.MemberService;

@WebServlet("/insertab")
public class InsertAbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertAbsenceServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//학생 휴학신청 처리용 컨트롤러
		
		String value = request.getParameter("value");
		String studentid = request.getParameter("studentid");
		
		System.out.println(value);
		System.out.println(studentid);
		
		int result = new AbsenceService().insertAbsence(value, studentid); 

		RequestDispatcher view = null;
		if(result >0) { //성공한다면 		
			view = request.getRequestDispatcher("selectab?studentid="+studentid);
			request.setAttribute("message", " 신청되었습니다.");
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "신청에러입니다");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
