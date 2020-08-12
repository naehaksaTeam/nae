package absence.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import absence.model.service.AbsenceService;

@WebServlet("/deleteab")
public class DeleteAbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteAbsenceServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//승인 상태일때 신청취소 요청오면 delete해서 result >0 이면 학생테이블에 가서 휴학여부 바꾸어준다.
		//미승인 상태일 때는 delete만 진행
		
		request.setCharacterEncoding("utf-8");
		
		String requestid = request.getParameter("requestid");
		
		int result = new AbsenceService().deleteAbsence(requestid);
		
		RequestDispatcher view = null;
		if(result > 0) {
			response.sendRedirect("");
		}else {
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
