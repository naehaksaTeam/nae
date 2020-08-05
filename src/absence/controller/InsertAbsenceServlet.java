package absence.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import absence.model.service.AbsenceService;

@WebServlet("/insertab")
public class InsertAbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertAbsenceServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//학생 휴학신청 처리용 컨트롤러
		request.setCharacterEncoding("utf-8");
		
		String value = request.getParameter("value");
		String studentid = request.getParameter("studentid");
		
		int result = new AbsenceService().insertAbsence(value); 

		result = 0;
		if(result >0) { //성공한다면 absenceRequestView.jsp }else {
			response.sendRedirect("/beet/views/absence/absenceSelectView.jsp");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("error", "나나나나나나");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
