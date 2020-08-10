package absence.controller;

import java.io.IOException;
import java.sql.Date;

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
		String requestid = request.getParameter("requestid");
		String id = request.getParameter("id");
		String ab = requestid.substring(0, 1);
		AbsenceService aservice = new AbsenceService();
		RequestDispatcher view = null;
		
		int date = aservice.canceldateChk(requestid);
		if(date > 0) {
			String approval = aservice.selectApprovalChk(requestid);
			if(approval.equals("Y")){//승인완료, 학생테이블가서 바꿔줘야함
				int result = aservice.deleteAbsence(requestid);
				if(result > 0) { // 휴학 취소되면 학생테이블 가서 변경
					int re = aservice.studentAbsenceChange(id);
					if(re > 0) {
						if(ab.equals("a")) {
							int r = aservice.studentCountMinus(id);
							if(r > 0) {
								response.sendRedirect("views/absence/absenceRequestView.jsp");
							}else {
								view = request.getRequestDispatcher("views/common/error.jsp");
								request.setAttribute("message","학생정보 변경에 실패하였습니다.");
								view.forward(request, response);
							}
						}else {
							response.sendRedirect("views/absence/absenceRequestView.jsp");
						}
					}else {
						view = request.getRequestDispatcher("views/common/error.jsp");
						request.setAttribute("message","학생정보 변경에 실패하였습니다.");
						view.forward(request, response);
					}
				}else {
					view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message","휴학신청취소에 실패하였습니다.");
					view.forward(request, response);
				}
			}else{ // 승인안된상황 
				int result = aservice.deleteAbsence(requestid);
				if(result > 0){
					response.sendRedirect("views/absence/absenceRequestView.jsp");
				}else {
					view = request.getRequestDispatcher("views/common/error.jsp");
					request.setAttribute("message","휴학신청취소에 실패하였습니다.");
					view.forward(request, response);
				}
			}
		}else {//취소날짜가 지났음
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message","취소가능한 날짜가 지났습니다.");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
