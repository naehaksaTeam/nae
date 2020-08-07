package absence.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import absence.model.service.AbsenceService;
import absence.model.vo.Absence;;

@WebServlet("/selectab")
public class SelectSTUAbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SelectSTUAbsenceServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		//학번을 가져옴 . 
		String studentid = request.getParameter("studentid");

		ArrayList<Absence> list = new AbsenceService().selectPrivateAbsence(studentid);
		System.out.println(list);
		RequestDispatcher view = null;
		if(loginMember != null && list != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			view = request.getRequestDispatcher("views/absence/absenceRequestView.jsp");
			request.setAttribute("list", list);
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "학번 : " +studentid +"\n 신청내역이 없습니다.");
			view.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
