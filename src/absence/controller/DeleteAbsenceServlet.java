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
		//학생이 신청취소하면 cancelcate랑 비교해서 신청취소해줌~
		//관리자가 신청취소하면 canceldate상관없이 테이블에서 삭제되게 함.? 어떻게 해야하지
		//우선 이 서블릿은 학생이 신청취소하는 걸로 
		
		//승인 상태일때 신청취소 요청오면 delete해서 result >0 이면 학생테이블에 가서 휴학여부 바꾸어준다.
		//미승인 상태일 때는 delete만 진행
		
		//신청취소하면 신청취소 성공시
		
		//requestid가 a로 시작하면 휴학신청 : approval이 Y이면 학생테이블가서 휴학여부=N, 휴학카운트는 -1
		//							 approval이 N이면 신청취소하면 끝
		
		
		//requestid가 b로 시작하면 복학신청 : approval이 Y이면 학생테이블가서 휴학여부=Y, 휴학카운트는 
		//							 approval이 N이면 신청취소하면 끝
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
