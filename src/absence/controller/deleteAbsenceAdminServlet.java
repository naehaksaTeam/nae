package absence.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import absence.model.service.AbsenceService;
import absence.model.vo.Absence;

@WebServlet("/deleteabad")
public class deleteAbsenceAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public deleteAbsenceAdminServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestid = request.getParameter("requestid");
		AbsenceService aservice = new AbsenceService();
		Absence a = aservice.selectOneAbsence(requestid);
		String ab = requestid.substring(0, 1);

		RequestDispatcher view = null;
		
		int date = aservice.canceldateChk(requestid);
		if(date > 0) {
			String approval = aservice.selectApprovalChk(requestid);
			if(approval.equals("Y")){//승인완료, 학생테이블가서 바꿔줘야함
				int result = aservice.deleteAbsence(requestid);
				if(result > 0) { // 휴학 취소되면 학생테이블 가서 변경
					int re = aservice.studentAbsenceChange(a.getStudentid());
					if(re > 0) {
						if(ab.equals("a")) {
							int r = aservice.studentCountMinus(a.getStudentid());
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
